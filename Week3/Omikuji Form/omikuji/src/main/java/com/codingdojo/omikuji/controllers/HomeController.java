package com.codingdojo.omikuji.controllers;

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
        return "redirect:/omikuji";
    }
	
	@GetMapping("/omikuji")
    public String omikujiForm() {
        return "index.jsp";
    }

	@PostMapping("/process")
	public String process(HttpSession session,
	    @RequestParam(value="num") String num,
	    @RequestParam(value="city") String city,
	    @RequestParam(value="person") String person,
	    @RequestParam(value="hobby") String hobby,
	    @RequestParam(value="thing") String thing,
		@RequestParam(value="comment") String comment) {
		
		session.setAttribute("num", num);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("thing", thing);
		session.setAttribute("comment", comment);

		return "redirect:/show";
	}

	@GetMapping("/show")
    public String show(HttpSession session, Model model) {
		String num = (String) session.getAttribute("num");
		String city = (String) session.getAttribute("city");
		String person = (String) session.getAttribute("person");
		String hobby = (String) session.getAttribute("hobby");
		String thing = (String) session.getAttribute("thing");
		String comment = (String) session.getAttribute("comment");

		model.addAttribute("num", num);
		model.addAttribute("city", city);
		model.addAttribute("person", person);
		model.addAttribute("hobby", hobby);
		model.addAttribute("thing", thing);
		model.addAttribute("comment", comment);

        return "omikuji.jsp";
    }

}
