package com.project.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.project.dojosandninjas.models.Dojo;
import com.project.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {
	
	private final DojoRepository dojoRepo;
	
	public DojoService(DojoRepository dojoRepo) {
		this.dojoRepo = dojoRepo;
	}
	
	public Dojo create(Dojo registerringDojo) {
		return dojoRepo.save(registerringDojo);
	}
	
	public List<Dojo> getAll() {
		return dojoRepo.findAll();
	}

	public Dojo getDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepo.findById(id);
		return optionalDojo.isPresent() ? optionalDojo.get() : null;
	}
}