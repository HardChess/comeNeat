package com.comeneat.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;

import com.comeneat.model.User;
import com.comeneat.service.UserService;

@Controller
public class AccountController {
	@Autowired
	private UserService userService;
	
	
	@GetMapping("/profile")
	public String showProfile(HttpServletRequest request, Model theModel, @CookieValue(value="idUser")String idUser) {
		
		if(isLogged(request)) {
			int IDuser = Integer.parseInt(idUser);
			User theUser = userService.getUserById(IDuser);
			theModel.addAttribute("user", theUser);
			
			
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
