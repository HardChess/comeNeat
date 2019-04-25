package com.comeneat.controller;

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
	            if(cookies[i].getName().equals("name")){
	            	
	        		return true;
	            }
	        }
	        return false;
		}

}
