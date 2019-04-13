package com.comeneat.controller;

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
	public String showChoice(HttpServletRequest request, Model model) {	
		
		if(isLogged(request)) {

			
			return "choice";
		}else return "redirect:/login";
		
	}
	
	@GetMapping("/buyFood")
	public String showBuyFood(HttpServletRequest request, HttpServletResponse response, Model theModel,
			@CookieValue(value = "idUser") String idUser) {
	
		if(isLogged(request)) {
			

			
			List<Advert> theAdvert = advertService.getAdverts1(idUser);
			theModel.addAttribute("adverts", theAdvert);
			
			List<Orders> theOrder = orderService.getUserOrders(idUser);
			theModel.addAttribute("orders", theOrder);
 			
			
			return "buy-food";
			
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
	public String saveAdvert(@ModelAttribute("advert") Advert theAdvert,@CookieValue(value = "idUser") String idUser ) {
		//save the customer using our service 
		advertService.saveAdvert(theAdvert, idUser);
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
	public String deleteCustomer(@RequestParam("idAdvert") int theId) {
		//delete the advert
		advertService.deleteAdvert(theId);
		//
		return "redirect:/sellFood";
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
	
}
