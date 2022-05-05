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
    public Expense createExpense(Expense expense) {
        return expenseRepo.save(expense);
    }
    
    // retrieves expense by id
    public Expense getExpense(Long id) {
        Optional<Expense> optExpense = expenseRepo.findById(id);
        if(optExpense.isPresent()) {
            return optExpense.get();
        } else {
            return null;
        }
    }	

}
