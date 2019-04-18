package com.comeneat.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.comeneat.service.OrderService;

@Controller
public class AccountController {
	
	@Autowired
	OrderService orderService;
	
	@GetMapping("/profile")
	public String showProfile(HttpServletRequest request) {
		
		if(isLogged(request)) {
			
			//Bu k�s�mda i�lemler yap�lacak
			
			
			return "profile";
			
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
