package com.project.dojosandninjas.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.dojosandninjas.models.Ninja;
import com.project.dojosandninjas.services.DojoService;
import com.project.dojosandninjas.services.NinjaService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/ninjas")
public class NinjaController {
	
	private final NinjaService ninjaServ;
	private final DojoService dojoServ;
	public NinjaController(NinjaService ninjaServ, DojoService dojoServ) {
		this.ninjaServ = ninjaServ;
		this.dojoServ = dojoServ;
	}
	
	@GetMapping("/create")
	public String createNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		model.addAttribute("allDojos", dojoServ.getAll());
		return "ninja/create.jsp";
	}
	
	@PostMapping("/process/create")
	public String processCreateNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("allDojos", dojoServ.getAll());
			return "ninja/create.jsp";
		}
		ninjaServ.create(ninja);
		return "redirect:/";
	}

}
