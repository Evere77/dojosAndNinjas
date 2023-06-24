package com.project.dojosandninjas.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.dojosandninjas.services.DojoService;
import com.project.dojosandninjas.services.NinjaService;

@Controller
public class HomeController {
	
	private final DojoService dojoServ;
	private final NinjaService ninjaServ;
	
	public HomeController(DojoService dojoServ, NinjaService ninjaServ) {
		this.dojoServ = dojoServ;
		this.ninjaServ = ninjaServ;
	}
	
	@GetMapping("/")
	public String home(Model model) {
		model.addAttribute("allNinjas", ninjaServ.getAll());
		model.addAttribute("allDojos", dojoServ.getAll());
		return "main/dashboard.jsp";
	}
}
