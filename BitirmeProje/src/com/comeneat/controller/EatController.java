package com.comeneat.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;


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
			

			
			List<Advert> theAdvert = advertService.getAdverts(idUser);
			theModel.addAttribute("adverts", theAdvert);
			
			List<Orders> theOrder = orderService.getUserOrders(idUser);
			theModel.addAttribute("orders", theOrder);
 			
			
			return "buy-food";
			
		}else return "redirect:/login";
		
	}
	
	@GetMapping("/sellFood")
	public String showSellFood(HttpServletRequest request) {
		
		if(isLogged(request)) {
			
			//Bu k�s�mda i�lemler yap�lacak
			
			
			return "sell-food";
			
		}else return "redirect:/login";
		
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
