package com.codingdojo.travels.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.travels.models.Expense;

@Repository
public interface ExpenseRepository extends CrudRepository<Expense, Long>{
	
    // this method retrieves all the expenses from the database
    List<Expense> findAll();
    
	
}
