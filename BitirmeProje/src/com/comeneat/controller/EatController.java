package com.comeneat.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.comeneat.model.Advert;
import com.comeneat.model.Orders;
import com.comeneat.model.User;
import com.comeneat.service.AdvertService;
import com.comeneat.service.OrderService;
import com.comeneat.service.UserService;

@Controller
public class EatController {
	
	@Autowired
	private AdvertService advertService;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/choice")
	public String showChoice(HttpServletRequest request, Model model, @CookieValue(value = "idUser") String idUser) {	
		
		if(isLogged(request)) {

			//Calculating avgPoint
			List<Integer> allPoints = new ArrayList<Integer>();
			
			List<Integer> advertIds = advertService.getAdvertIds(idUser);
			int count = advertIds.size();

			//Having all points about user
			for(int i=0; i<count; i++) {
				
				int idAdvert = advertIds.get(i);
				
				List<Integer> points = orderService.getAdvertPoints(idAdvert);
				
				allPoints.addAll(points);
			}
			
			//calculating and writing avgPoint to user table
			double avgPoint = calculateAverage(allPoints);
			userService.setAvgPoint(avgPoint, idUser);
			
			System.out.println("Calculated average point is : " + avgPoint);
			
			return "choice";
		}else return "redirect:/login";
		
	}
	
	
	
	@GetMapping("/sellFood")
	public String showSellFood(HttpServletRequest request, HttpServletResponse response, Model theModel,
			@CookieValue(value = "idUser") String idUser) {
		
		if(isLogged(request)) {
			//get adverts from the dao
			List<Advert> theAdverts = advertService.getAdverts2(idUser);
			Advert advert = new Advert();
			//Add adverts to the model
			theModel.addAttribute("adverts", theAdverts);
			theModel.addAttribute("advert", advert); 
			return "sell-food";
			
		}else return "redirect:/login";
		
	}
	
	@PostMapping("/saveAdvert")
	public String saveAdvert(@ModelAttribute("advert") Advert theAdvert,@CookieValue(value = "idUser") String idUser,
			@CookieValue(value = "name") String name) {
		//save the customer using our service 
		advertService.saveAdvert(theAdvert, idUser ,name);
		return "redirect:/sellFood";
	}
	
	@GetMapping("/showFormForUpdate")
		public String showFormForUpdate(@RequestParam("idAdvert") int theId,
				Model theModel) {
			
			//get the advert from the service 
			Advert theAdvert = advertService.getAdverts(theId);
			//set advert as a model attribute to pre-populate the form
			theModel.addAttribute("advert", theAdvert);
			//send over to our form
			return "sell-food";
		}
	
	@GetMapping("/delete")
	public String deleteAdvert(@RequestParam("idAdvert") int theId) {
		//delete the advert
		advertService.deleteAdvert(theId);
		//
		return "redirect:/sellFood";
	}
	
	@GetMapping("/showAdvertOrders")
	public String showAdvertOrders(@RequestParam("idAdvert") int idAdvert, Model model, @CookieValue(value = "idUser") String idUser) {
		
		List<Orders> orders = orderService.getAdvertOrders(idAdvert);	
		model.addAttribute("orders", orders);
		
		List<Advert> theAdverts = advertService.getAdverts2(idUser);
		Advert advert = new Advert();
		//Add adverts to the model
		model.addAttribute("adverts", theAdverts);
		model.addAttribute("advert", advert); 

		
		return "sell-food";
	}
	
	@GetMapping("/buyFood")
	public String showBuyFood(HttpServletRequest request, HttpServletResponse response, Model theModel,
			@CookieValue(value = "idUser") String idUser) {
	
		if(isLogged(request)) {
			

			//Advertler listeleniyor
			List<Advert> theAdvert = advertService.getAdverts1(idUser);
			theModel.addAttribute("adverts", theAdvert);

			//Gerekli listelerin tanýmlanmasý
			List<Integer> userIds = new ArrayList<Integer>();
			List<User> users = new ArrayList<User>();
			List<Double> avgPoints = new ArrayList<Double>();
			List<Integer> distances = new ArrayList<Integer>();
			
			//Login olmus userin konum bilgileri
			User myUser = userService.getUserById(Integer.parseInt(idUser));
			double myLat = myUser.getLocationLat();
			double myLong = myUser.getLocationLang();
			
			//Tum ilanlarin sirasiyla userlari bulunuyor.
			for(int i=0; i<theAdvert.size(); i++) {
				
				Advert a = theAdvert.get(i);
				
				userIds.add(a.getIdUser());
				System.out.println(userIds);
			}
			
			
			
			//sirali avg listesi(tekrarli)
			for(int i=0; i<userIds.size(); i++) {
				
				avgPoints.add(userService.getAvgById(userIds.get(i)));
				System.out.println(avgPoints);
			}

			theModel.addAttribute("avgPoints", avgPoints);
			
			//available meals için user list sýrasýyla set ediliyor.(tekrarlý liste)
			for(int i=0; i<userIds.size(); i++) {

				int id = userIds.get(i);
				
				users.add(userService.getUserById(id));
			}
			
			//Distance hesaplama
			//Sirayla konumlar aliniyor. Mesafe hesaplanýp listeye yazýlýyor.(tekrarlý)
			for(int i=0; i<userIds.size(); i++) {
				
				int id = userIds.get(i);
				
				User tempUser = userService.getUserById(id);
				
				double tempLat = tempUser.getLocationLat();
				double tempLong = tempUser.getLocationLang();
				
				int distance = getDistanceFromLatLonInKm(myLat, myLong, tempLat, tempLong);
				
				distances.add(distance);
				
			}
			
			//distance modeli olusturuldu
			theModel.addAttribute("distances", distances);
			
			//Orderlar listeleniyor
			List<Orders> theOrder = orderService.getUserOrders(idUser);
			theModel.addAttribute("orders", theOrder);
 			
			
			return "buy-food";
			
		}else return "redirect:/login";
		
	}
	
	@PostMapping("/orderIt")
	public String orderIt(@RequestParam("idAdvert") int idAdvert, @ModelAttribute("order") Orders theOrder,
			@CookieValue(value = "idUser") String idUser, @RequestParam("foodName") String foodName,
			@CookieValue(value = "name") String orderOwner, @RequestParam("advertOwner") String advertOwner,
			@RequestParam("portion") int portion, HttpServletRequest request) {
		
		String number=request.getParameter("number");
		int n = Integer.parseInt(number);
		
		if(portion>=n) {
			
			orderService.setNewOrder(idAdvert, theOrder, idUser, foodName, orderOwner, advertOwner, n);
			
		}
		
		else {
			//Hata mesaji yazï¿½lacak...
			System.out.println("Yeteri kadar porsiyon bulunmuyor.");
		}
		
		
		return "redirect:/buyFood";
	}
	
	@GetMapping("/contact")
	public String contactBuyFood(@RequestParam("idOrder") int idOrder, Model theModel,
			@CookieValue(value = "idUser") String idUser) {
		
		//We get advert from idOrder and get user from idAdvert
		
		Orders theOrder = orderService.getOrderById(idOrder);

		int idAdvert = theOrder.getIdAdvert();
		Advert theAdvert = advertService.getAdvertById(idAdvert);
		
		int idUser1 = theAdvert.getIdUser();
		User theUser = userService.getUserById(idUser1);
		theModel.addAttribute("user", theUser);
		
		
		List<Advert> theAdverts = advertService.getAdverts1(idUser);
		theModel.addAttribute("adverts", theAdverts);
		
		List<Orders> theOrders = orderService.getUserOrders(idUser);
		theModel.addAttribute("orders", theOrders);
			
		return "buy-food";
	}
	
	@PostMapping("/pointIt")
	public String pointIt(Model theModel, @RequestParam("idOrder") int idOrder,
			@RequestParam("point") int point, HttpServletRequest request) {

		//puanlama islemi
		String selectedP = request.getParameter("points"); 
		int selectedPoint = Integer.parseInt(selectedP);
		
		if(point<0) {
			
			orderService.setPoint(selectedPoint, idOrder);
			
		}
		else {
			//hata dï¿½ndï¿½rï¿½lecek.
			System.out.println("puan zaten verilmistir.");
		}
		
		
		
		return "redirect:/buyFood";
	}
	
	//Method created by Alperen 
	private boolean isLogged(HttpServletRequest request) {

		Cookie[] cookies = request.getCookies();
        for(int i = 0; i< cookies.length ; ++i){
            if(cookies[i].getName().equals("name")){
            	
        		return true;
            }
        }
        return false;
	}
	
	//calculate average poit function
	private double calculateAverage(List <Integer> marks) {
		  Integer sum = 0;
		  if(!marks.isEmpty()) {
		    for (Integer mark : marks) {
		        sum += mark;
		    }
		    String strResult = String.format("%.2f",sum.doubleValue() / marks.size());   
		    Double result = Double.parseDouble(strResult.replace(",","."));
		    return result;
		  }
		  return sum;
	}
	
	private int getDistanceFromLatLonInKm(double e,double f,double g, double h) {
		
		int R = 6371; // Radius of the earth in km
		float dLat = deg2rad(g-e);  // deg2rad below
		float dLon = deg2rad(h-f); 
		
		float a = (float) (Math.sin(dLat/2) * Math.sin(dLat/2) +
					Math.cos(deg2rad(e)) * Math.cos(deg2rad(g)) * 
					Math.sin(dLon/2) * Math.sin(dLon/2)); 
		
		float  c = (float) (2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))); 
		double km = 1000*(R * c); // Distance in km
		int m = (int) km;
		return m;
		
	}
	
	private float deg2rad(double d) {
		
		return (float) (d*(Math.PI/180));
	}
	
}