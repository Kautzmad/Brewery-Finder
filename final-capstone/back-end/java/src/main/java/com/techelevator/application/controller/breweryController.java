package com.techelevator.application.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.application.dao.breweryDao;
import com.techelevator.application.model.Brewery;

@RestController
public class breweryController {
	
	@Autowired
	private breweryDao breweryDao;
	
	public breweryController(breweryDao breweryDao) {
		this.breweryDao = breweryDao;
	}
	
	// Get all breweries
	@RequestMapping(path = "/breweries", method = RequestMethod.GET)
	public List<Brewery> getAllBreweries(){
		return breweryDao.getAllBreweries();
	}
	
	// Get Brewery by ID
	@RequestMapping(path = "/breweries/{breweryId}", method = RequestMethod.GET)
	public Brewery getBrewerybyBreweryID(@PathVariable Long breweryId) {
		return breweryDao.getBreweryById(breweryId);
	}
	
	// Add a new brewery
	// This needs to limited to just "Brewer" users
	@RequestMapping(path = "/breweries", method = RequestMethod.POST)
	public void addNewBrewery(@RequestBody Brewery aBrewery) {
		breweryDao.addNewBrewery(aBrewery);
	}
	
	// Update a brewery
	
	@RequestMapping(path = "/breweries", method = RequestMethod.PUT)
	public void updateBrewery(@RequestBody Brewery aBrewery) {
		breweryDao.updateBrewery(aBrewery);
	}
	
	// Delete a brewery
	// Should be limited to Admin
	@RequestMapping(path = "/breweries/{breweryId}", method = RequestMethod.DELETE)
	public void deleteBrewery(@PathVariable Long breweryId) {
		breweryDao.deleteBrewery(breweryId);
	}
	
}
