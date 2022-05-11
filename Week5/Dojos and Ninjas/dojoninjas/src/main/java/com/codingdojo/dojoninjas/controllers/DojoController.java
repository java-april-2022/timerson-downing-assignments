package com.codingdojo.dojoninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.dojoninjas.models.Dojo;
import com.codingdojo.dojoninjas.services.DojoService;

@Controller
public class DojoController {
	
	@Autowired
	private DojoService dojoService;

	@GetMapping("/createDojo")
	public String createDojo(@ModelAttribute("newDojo") Dojo dojo) {
		return "dojo.jsp";
	}
	
	@PostMapping("/saveDojo")
	public String saveDojo(@Valid @ModelAttribute("newDojo") Dojo dojo, BindingResult results) {
		if(results.hasErrors()) {
			return "dojo.jsp";
		}
		dojoService.createDojo(dojo);
		return "redirect:/dashboard";
	}
	
	@GetMapping("/viewDojo/{id}")
	public String viewDojo(@PathVariable Long id, Model model) {
		model.addAttribute("dojo", dojoService.getOneDojo(id));
		return "ninjas.jsp";
	}
	
}
