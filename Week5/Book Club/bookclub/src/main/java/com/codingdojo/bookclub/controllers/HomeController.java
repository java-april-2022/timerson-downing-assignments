package com.codingdojo.bookclub.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.codingdojo.bookclub.models.LoginUser;
import com.codingdojo.bookclub.models.User;
import com.codingdojo.bookclub.services.BookService;
import com.codingdojo.bookclub.services.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private BookService bookService;
	
	@GetMapping("/")
	private String index(Model model) {
		
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
       
		return "index.jsp";
	}
	
    @GetMapping("/dashboard")
    public String dashboard(HttpSession session, Model model) {
    	
    	Long userId = (Long) session.getAttribute("userId");
    	if(userService.getSessionUser(session) == null) return "redirect:/";

    	model.addAttribute("allBooks", bookService.getAllBooks());
        User user = userService.getUser(userId);
        model.addAttribute("validUser", user);

      	return "dashboard.jsp";
    }

    
}
