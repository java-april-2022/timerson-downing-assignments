package com.codingdojo.bookclub.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.bookclub.models.Book;
import com.codingdojo.bookclub.services.BookService;
import com.codingdojo.bookclub.services.UserService;

@Controller
public class BookController {
	
	@Autowired
	private BookService bookService;
	
	@Autowired
	private UserService userService;

    
    @GetMapping("/addBook")
    public String createBook(@ModelAttribute("newBook") Book book, HttpSession session) {
    	
    	if(userService.getSessionUser(session) == null) return "redirect:/";
    	
    	return "newBook.jsp";
    }
    
    @GetMapping("/viewBook/{id}")
    public String viewBook(@PathVariable Long id, Model model, HttpSession session) {
    	
    	if(userService.getSessionUser(session) == null) return "redirect:/";
    	
    	model.addAttribute("book", bookService.getBook(id));
    	return "viewBook.jsp";
    }

    @GetMapping("/editBook/{id}")
    public String editBook(@PathVariable Long id, @ModelAttribute("book") Book book, 
    		Model model, HttpSession session) {
    	
    	if(userService.getSessionUser(session)== null) return "redirect:/";
    	
    	model.addAttribute("book", bookService.getBook(id));
    	return "editBook.jsp";
    }

    @PostMapping("/saveBook")
    public String saveBook(@Valid @ModelAttribute("newBook") Book book, BindingResult results, 
    		Model model, HttpSession session, RedirectAttributes redirectAttributes) {

        if(results.hasErrors()) {
            model.addAttribute("newBook", book);
            return "newBook.jsp";
        }
    	
    	Long userId = (Long) session.getAttribute("userId");
    	if(userId == null) return "redirect:/";
    	
    	bookService.createBook(userId, book);
        redirectAttributes.addFlashAttribute("message", "Your Book Has Been Saved");

    	return "redirect:/dashboard";
    }
    
    @PutMapping("/updateBook/{id}")
    public String updateBook(@Valid @PathVariable Long id, 
    		@ModelAttribute("book") Book book, BindingResult results, 
    		Model model, HttpSession session) {
    	
        if(results.hasErrors()) {
            model.addAttribute("book", book);
            return "editBook.jsp";
        }
    	if(userService.getSessionUser(session) == null) return "redirect:/";
    	
    	bookService.updateBook(book);
    	return "redirect:/viewBook/{id}";
    }
    
    @DeleteMapping("/deleteBook/{id}")
    public String deleteBook(@PathVariable Long id, HttpSession session, RedirectAttributes redirectAttributes) {
    	
    	if(userService.getSessionUser(session) == null) return "redirect:/";
    	
    	bookService.deleteBook(id);

        redirectAttributes.addFlashAttribute("message", "You Have Deleted A Book");
    	return "redirect:/dashboard";
    }
    
	
}
