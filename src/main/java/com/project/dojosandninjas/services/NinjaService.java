package com.project.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.project.dojosandninjas.models.Ninja;
import com.project.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	
	private final NinjaRepository ninjaRepo;
	public NinjaService(NinjaRepository ninjaRepo) {
		this.ninjaRepo = ninjaRepo;
	}
	
	public Ninja getOne(Long id) {
		Optional<Ninja> optionalNinja = ninjaRepo.findById(id);
		return optionalNinja.isPresent() ? optionalNinja.get() : null;
	}
	
	public List<Ninja> getAll() {
		return (List<Ninja>) ninjaRepo.findAll();
	}
	
	public Ninja create(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
}
