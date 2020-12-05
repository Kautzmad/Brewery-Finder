package com.techelevator.application.dao;

import java.util.List;

import com.techelevator.application.model.Beer;

public interface beerDao {

	List<Beer> getAllBeer();

	void saveBeer(Beer newBeer);
	
}
