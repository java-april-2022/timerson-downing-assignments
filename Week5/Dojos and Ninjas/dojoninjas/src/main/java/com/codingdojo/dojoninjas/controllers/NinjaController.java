package com.codingdojo.dojoninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.dojoninjas.models.Ninja;
import com.codingdojo.dojoninjas.services.DojoService;
import com.codingdojo.dojoninjas.services.NinjaService;

@Controller
public class NinjaController {

	@Autowired
	private NinjaService ninjaService;
	
	@Autowired
	private DojoService dojoService;
	
	@GetMapping("/createNinja")
	public String createNinja(@ModelAttribute("newNinja") Ninja ninja, Model model) {
		model.addAttribute("allDojos", dojoService.getAllDojos());
		return "ninja.jsp";
	}
	
	@PostMapping("/saveNinja")
	public String saveNinja(@Valid @ModelAttribute("newNinja") Ninja ninja, BindingResult results, Model model) {
		if(results.hasErrors()) {
			model.addAttribute("allDojos", dojoService.getAllDojos());
			return "ninja.jsp";
		}
		ninjaService.createNinja(ninja);
		return "redirect:/dashboard";
	}
	
}
