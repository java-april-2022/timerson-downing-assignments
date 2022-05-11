package com.codingdojo.dojoninjas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.dojoninjas.models.Dojo;
import com.codingdojo.dojoninjas.repositories.DojoRepository;

@Service
public class DojoService {
	
	@Autowired
	private DojoRepository dojoRepo;
	
	
//	Get All Dojos
	public List<Dojo> getAllDojos() {
		return dojoRepo.findAll();
	}
	
//	Create Dojo
	public Dojo createDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}
	
//	Get one Dojo by ID
	public Dojo getOneDojo(Long id) {
		return dojoRepo.findById(id).orElse(null);
	}
	
}
