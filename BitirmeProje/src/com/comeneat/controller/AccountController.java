package com.comeneat.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.comeneat.model.Advert;
import com.comeneat.model.Orders;
import com.comeneat.model.User;
import com.comeneat.service.AdvertService;
import com.comeneat.service.OrderService;
import com.comeneat.service.UserService;

@Controller
public class AccountController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private AdvertService advertService;
	
	@Autowired
	private OrderService orderService;
	
	
	@GetMapping("/profile")
	public String showProfile(HttpServletRequest request, Model theModel, @CookieValue(value="idUser")String idUser) {
		
		if(isLogged(request)) {
			int IDuser = Integer.parseInt(idUser);
			User theUser = userService.getUserById(IDuser);
			theModel.addAttribute("user", theUser);
			
			List<String> citesList = new ArrayList<>();
			citesList.add("Adana");
			citesList.add("Ad�yaman");
			citesList.add("Afyonkarahisar");
			citesList.add("A�r�");
			citesList.add("Amasya");
			citesList.add("Ankara");
			citesList.add("Antalya");
			citesList.add("Artvin");
			citesList.add("Ayd�n");
			citesList.add("Bal�kesir");
			citesList.add("Bilecik");
			citesList.add("Bing�l");
			citesList.add("Bitlis");
			citesList.add("Bolu");
			citesList.add("Burdur");
			citesList.add("Bursa");
			citesList.add("�anakkale");
			citesList.add("�ank�r�");
			citesList.add("�orum");
			citesList.add("Denizli");
			citesList.add("Diyarbak�r");
			citesList.add("Edirne");
			citesList.add("Elaz��");
			citesList.add("Erzincan");
			citesList.add("Erzurum");
			citesList.add("Eski�ehir");
			citesList.add("Gaziantep");
			citesList.add("Giresun");
			citesList.add("G�m��hane");
			citesList.add("Hakkari");
			citesList.add("Isparta");
			citesList.add("Mersin");
			citesList.add("�stanbul");
			citesList.add("�zmir");
			citesList.add("Kars");
			citesList.add("Kastamonu");
			citesList.add("Kayseri");
			citesList.add("K�rklareli");
			citesList.add("K�r�ehir");
			citesList.add("Kocaeli");
			citesList.add("Konya");
			citesList.add("K�tahya");
			citesList.add("Malatya");
			citesList.add("Manisa");
			citesList.add("Kahramanmara�");
			citesList.add("Mardin");
			citesList.add("Mu�la");
			citesList.add("Mu�");
			citesList.add("Nev�ehir");
			citesList.add("Ni�de");
			citesList.add("Ordu");
			citesList.add("Rize");
			citesList.add("Sakarya");
			citesList.add("Samsun");
			citesList.add("Siirt");
			citesList.add("Sinop");
			citesList.add("Sivas");
			citesList.add("Tekirda�");
			citesList.add("Tokat");
			citesList.add("Trabzon");
			citesList.add("Tunceli");
			citesList.add("�anl�urfa");
			citesList.add("U�ak");
			citesList.add("Van");
			citesList.add("Yozgat");
			citesList.add("Zonguldak");
			citesList.add("Aksaray");
			citesList.add("Bayburt");
			citesList.add("Karaman");
			citesList.add("K�r�kkale");
			citesList.add("Batman");
			citesList.add("��rnak");
			citesList.add("Bart�n");
			citesList.add("Ardahan");
			citesList.add("I�d�r");
			citesList.add("Yalova");
			citesList.add("Karab�k");
			citesList.add("Kilis");
			citesList.add("Osmaniye");
			citesList.add("D�zce");

			theModel.addAttribute("citesList", citesList);
			
			//Calculate meals bought
			List<Advert> userAdverts = advertService.getUserAdverts(idUser);
			int boughtCount = userAdverts.size();
			theModel.addAttribute("boughtCount", boughtCount);
			System.out.println("bought count=" + boughtCount);
			
			//Calculate meals sold
			List<Orders> userOrders = orderService.getUserOrders(idUser);
			int soldCount = userOrders.size();
			theModel.addAttribute("soldCount", soldCount);
			System.out.println("sold count=" + soldCount);
			
			return "profile";
			
		}else return "redirect:/login";
		
	}
	
	@PostMapping("/updateUser")
	public String updateUser(Model theModel, @CookieValue(value="idUser")String idUser, @ModelAttribute("user") User user) {
		
		int theId = Integer.parseInt(idUser);
		
		userService.updateUser(theId, user);
		
		return "redirect:/profile";
	}
	
	
	@PostMapping("/longSuccess")
	public String pointIt(Model theModel, @ModelAttribute("user") User user,
			@CookieValue(value="idUser")String idUser, HttpServletRequest request) {
		float longit = user.getLocationLang();
		float latit = user.getLocationLat();
		userService.setLongitude(longit, idUser);
		userService.setLatitude(latit, idUser);
		return "redirect:/profile";
	
	}
	
	
	
	//Method created by Alperen 
		private boolean isLogged(HttpServletRequest request) {

			Cookie[] cookies = request.getCookies();
	        for(int i = 0; i< cookies.length ; ++i){
	            if(cookies[i].getName().equals("idUser")){
	            	
	        		return true;
	            }
	        }
	        return false;
		}
		


}
