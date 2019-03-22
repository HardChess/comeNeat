package com.comeneat.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EatController {
	
	@GetMapping("/choice")
	public String showChoice(HttpServletRequest request, Model model) {	
		
		if(isLogged(request)) {
			
			
			return "choice";
		}else return "redirect:/login";
		
	}
	
	@GetMapping("/buyFood")
	public String showBuyFood(HttpServletRequest request) {
		
		if(isLogged(request)) {
			
			//Bu k�s�mda i�lemler yap�lacak
			
			
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
