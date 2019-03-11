package com.alperen.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alperen.springdemo.entity.User;
import com.alperen.springdemo.service.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/")
	public String showIndex() {
		return "index"; 
	}
	@GetMapping("/signup")
	public String showSignup(Model theModel) {
		
		User theUser = new User();
		theModel.addAttribute("user", theUser);
		
		return "signup"; 
	}
	
	@PostMapping("/saveUser")
	public String saveStudent(@ModelAttribute("user") User theUser) {
		
		userService.saveUser(theUser);
		
		return "redirect:/";
	}

	
}

