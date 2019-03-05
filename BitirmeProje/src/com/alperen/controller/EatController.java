package com.alperen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/eat")
public class EatController {
	
	@RequestMapping("/buyFood")
	public String showBuyFood() {
		return "buy-food"; 
	}
	
	@RequestMapping("/choice")
	public String showChoice() {
		return "choice"; 
	}
	
	
	@RequestMapping("/sellFood")
		public String showSellFood() {
			return "sell-food";
		}

}
