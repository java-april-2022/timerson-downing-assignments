package com.codingdojo.hoppersreceipt.controllers;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String index(Model model) {
		
        String name = "Grace Hopper";
        String itemName = "Copper wire";
        double price = 5.25;
        String description = "Metal strips, also an illustration of nanoseconds.";
        String vendor = "Little Things Corner Store";
 		
        model.addAttribute("nameKey", name);
        model.addAttribute("itemKey", itemName);
        model.addAttribute("priceKey", price);
        model.addAttribute("descKey", description);
        model.addAttribute("vendorKey", vendor);
        
		return "index.jsp";
	}

}
