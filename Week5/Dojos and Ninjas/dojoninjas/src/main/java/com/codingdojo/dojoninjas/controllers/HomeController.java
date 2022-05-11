package com.codingdojo.dojoninjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.codingdojo.dojoninjas.services.DojoService;

@Controller
public class HomeController {
	
	@Autowired
	private DojoService dojoService;
	
	
	@GetMapping("/")
	public String index() {
		return "redirect:/dashboard";
	}

	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		model.addAttribute("allDojos", dojoService.getAllDojos());
		return "index.jsp";
	}
	



	
}
