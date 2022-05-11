package com.codingdojo.dojoninjas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.dojoninjas.models.Ninja;
import com.codingdojo.dojoninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	
	@Autowired
	private NinjaRepository ninjaRepo;

	
//	Get All Ninjas
	public List<Ninja> getAllNinjas() {
		return ninjaRepo.findAll();
	}
	
//	Create Ninja
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	
	
}
