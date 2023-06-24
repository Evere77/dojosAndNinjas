package com.project.dojosandninjas.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.dojosandninjas.models.Dojo;
import com.project.dojosandninjas.services.DojoService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/dojos")
public class DojoController {
	
	private final DojoService dojoServ;
	public DojoController(DojoService dojoServ) {
		this.dojoServ = dojoServ;
	}
	
	@GetMapping("/create")
	public String createDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "dojo/create.jsp";
	}
	
	@PostMapping("/process/create")
	public String processCreateDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if(result.hasErrors() ) {
			return "dojo/create.jsp";
		}
		dojoServ.create(dojo);
		return "redirect:/";
	}
	
	@GetMapping("/{id}")
	public String showOneDojo(@PathVariable("id") Long id, Model model) {
		model.addAttribute("dojo", dojoServ.getDojo(id));
		return "dojo/displayOne.jsp";
	}
}