package com.web.store.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
//	@RequestMapping(value = "/welcome", method = RequestMethod.GET) 等於下面的寫法
	@GetMapping("/welcome")
	public String welcome(Model model) {
		model.addAttribute("title", "Welcome to Dental Reservation System");
		model.addAttribute("subtitle", "Unique quick booking system");
		return "welcome";
	}
		
	@GetMapping({"/","/index.html"})	
	public String index(HttpServletRequest req, Model model) {
		model.addAttribute("getRequestURL", req.getRequestURL());
		model.addAttribute("getRequestURI", req.getRequestURI());
		model.addAttribute("getContextPath", req.getContextPath());
		model.addAttribute("getQueryString", req.getQueryString());
		return "index";
	}
		
}
