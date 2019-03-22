package com.comeneat.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AccountController {
	
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
