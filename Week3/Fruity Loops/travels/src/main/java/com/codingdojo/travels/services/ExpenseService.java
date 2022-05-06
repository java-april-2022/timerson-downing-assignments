package com.codingdojo.travels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.travels.models.Expense;
import com.codingdojo.travels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	
	
    // adding the expense repository as a dependency
	@Autowired
    private ExpenseRepository expenseRepo;
    
    // returns all the expenses
    public List<Expense> allExpenses() {
        return expenseRepo.findAll();
    }
    
    // creates an expense
    public void createExpense(Expense expense) {
        expenseRepo.save(expense);
    }
    
    // updates an expense
    public void updateExpense(Expense expense) {
        expenseRepo.save(expense);
    }

    // deletes an expense
    public void deleteExpense(Long id) {
        expenseRepo.deleteById(id);
        return;
    }

    // gets expense by id
    public Expense getExpense(Long id) {
    	return expenseRepo.findById(id).orElse(null);
    }	

}
