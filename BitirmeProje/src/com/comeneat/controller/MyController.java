package com.infotech.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.protobuf.Int64Value;
import com.comeneat.model.User;
import com.comeneat.model.UserCredential;
import com.comeneat.service.UserService;

@Controller
public class MyController {
	
	@Autowired
	private UserService userService;


	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public UserService getUserService() {
		return userService;
	}
	
	@RequestMapping(value ="/")
	public String homePage(){
		
		return "index";
	}
	
	@RequestMapping(value ="/login" ,method=RequestMethod.GET)
	public String loginPage(Model model, HttpServletRequest request){
		
		if(isLogged(request)) {
			return "redirect:/choice";
		}
		else {

			model.addAttribute("userCredential", new UserCredential());
			return "login";
			
		}
	}

	@RequestMapping(value ="/register" ,method=RequestMethod.GET)
	public String registerPage(Model model, HttpServletRequest request){
		
		if(isLogged(request)) {
			
			return "redirect:/choice";
			
		}
		else {
			model.addAttribute("user", new User());
			return "register";
		}
	}

	@RequestMapping(value ="/registerSuccess" ,method=RequestMethod.POST)
	public ModelAndView registerSuccess(@Valid @ModelAttribute("user") User user,BindingResult bindingResult){
		if(bindingResult.hasErrors()){
			return new ModelAndView("register");
		}
		getUserService().registerUser(user);
		ModelAndView modelAndView = new ModelAndView("redirect:/");
		modelAndView.addObject("user", user);
		return modelAndView;
	}
	@RequestMapping(value ="/loginSuccess" ,method=RequestMethod.POST)
	public ModelAndView loginSuccess(@Valid @ModelAttribute("userCredential") UserCredential userCredential,
			BindingResult bindingResult,
			@CookieValue(value = "name", defaultValue = "anonymous") String name,
			HttpServletResponse response){
		
		if(bindingResult.hasErrors()){
			return new ModelAndView("login");
		}

		//Adding cookie with name 
		Cookie cookie = new Cookie("name", name);
		
		
		ModelAndView modelAndView = new ModelAndView("redirect:/choice");
		User user = getUserService().validateUserCredential(userCredential.getEmail(), userCredential.getPassword());
		if(user!= null){
			
			modelAndView.addObject("user", user);
			
			//Setting cookie value and maxage
			cookie.setPath("/BitirmeProje");
			cookie.setValue(user.getName());
			cookie.setMaxAge(60 * 60 * 24 * 30);
			

			response.addCookie(cookie);
			
			
			return modelAndView;
		}else{
			 modelAndView = new ModelAndView("notFound");
		}
		return modelAndView;
	}

	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		
		if(isLogged(request)) {

			killCookies(request, response);
			
			return "redirect:/";
			
		}else return "redirect:/login";
		//Killing all cookies when logout
		
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
	
	//Method created by Alperen 
	private void killCookies(HttpServletRequest request, HttpServletResponse response) {
			
			Cookie[] cookies = request.getCookies();
			for (Cookie cookie : cookies) {
	
			cookie.setPath("/BitirmeProje");
			cookie.setMaxAge(0);
			cookie.setValue(null);
			response.addCookie(cookie);
			}
			
	}
	

	@ModelAttribute
	public void headerMessage(Model model){
		model.addAttribute("headerMessage", "Welcome to ComeNeat");
		
		List<String> techList = new ArrayList<>();
		techList.add("Kemalpasa Mah");
		techList.add("Istiklal Caddesi");
		techList.add("Kocovali Mah");
		techList.add("Uskudar");
		techList.add("Fatih");
		
		List<String> citesList = new ArrayList<>();
		citesList.add("Istanbul");
		citesList.add("Bursa");
		citesList.add("Izmir");
		citesList.add("Antalya");
		
		model.addAttribute("technologyList", techList);
		model.addAttribute("citesList", citesList);
	}

}
