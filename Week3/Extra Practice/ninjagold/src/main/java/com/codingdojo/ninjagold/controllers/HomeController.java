package com.codingdojo.ninjagold.controllers;

import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String index() {
		return "redirect:/gold";
	}

	@GetMapping("/gold")
	public String gold(HttpSession session, Model model) {
		if (session.getAttribute("totalGold") == null) {
	    	session.setAttribute("totalGold", 0);
		}
		if (session.getAttribute("addGold") == null) {
	    	session.setAttribute("addGold", true);
		}
		if (session.getAttribute("choice") == null) {
	    	session.setAttribute("choice", "");
		}
		if (session.getAttribute("activities") == null) {
			ArrayList<String> activities = new ArrayList<String>();
	    	session.setAttribute("activities", activities);
		}
		
		Integer currentGold = (Integer) session.getAttribute("totalGold");
		Boolean addGold = (Boolean) session.getAttribute("addGold");
		String choice = (String) session.getAttribute("choice");
//		ArrayList<String> activities = (ArrayList<String>) session.getAttribute("activities");

		model.addAttribute("totalGold", currentGold);
    	model.addAttribute("addGold", addGold);
    	model.addAttribute("choice", choice);
//    	model.addAttribute("activities", activities);
    	
//    	session.setAttribute("totalGold", 0);
		return "index.jsp";
	}

	@PostMapping("/process")
	public String process(HttpSession session, 
			@RequestParam(value="choice") String choice,
			@RequestParam(value="minGold") String minGold, 
			@RequestParam(value="maxGold") String maxGold) {
		
		int minValue = Integer.parseInt(minGold);
		int maxValue = Integer.parseInt(maxGold) - minValue;
		
		Random random = new Random();
		int amount = random.nextInt(maxValue);
		amount = amount + minValue;
		boolean addGold = random.nextBoolean();
		
//    	ArrayList<String> activities = (ArrayList<String>) session.getAttribute("activities");
    	String activity = "";
		
		Integer currentGold = (Integer) session.getAttribute("totalGold");
		if (addGold == false && choice.matches("quest")) {
			currentGold = currentGold - amount;
	    	activity = String.format("You went on a %s and lost %d gold", choice, amount);
		}
		else {
			currentGold = currentGold + amount;
	    	activity = String.format("You entered a %s and earned %d gold", choice, amount);
		}
		
//		activities.add(activity);
    	session.setAttribute("totalGold", currentGold);
    	session.setAttribute("addGold", addGold);
    	session.setAttribute("choice", choice);
//    	session.setAttribute("activities", activities);

    	return "redirect:/gold";
	}

}
