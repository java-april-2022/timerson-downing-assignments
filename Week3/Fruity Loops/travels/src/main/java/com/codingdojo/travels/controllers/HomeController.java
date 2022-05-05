package com.codingdojo.travels.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.travels.models.Expense;
import com.codingdojo.travels.services.ExpenseService;


@Controller
public class HomeController {
	
	@Autowired
	private ExpenseService expenseService;

	@GetMapping("/")
	public String index(@ModelAttribute("newExpense") Expense newExpense, Model model) {
		List<Expense> expenses = expenseService.allExpenses();
		model.addAttribute("allExpenses", expenses);
		return "index.jsp";
	}
	
	@PostMapping("/process")
	public String process(@Valid @ModelAttribute("newExpense") Expense newExpense, BindingResult results) {
		if(results.hasErrors()) {
			return "redirect:/";
		}
		expenseService.createExpense(newExpense);
		return "redirect:/";
	}

}
