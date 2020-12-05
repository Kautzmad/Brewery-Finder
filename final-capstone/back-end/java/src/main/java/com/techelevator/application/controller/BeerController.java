package com.techelevator.application.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.application.dao.beerDao;
import com.techelevator.application.dao.breweryDao;
import com.techelevator.application.dao.reviewDao;
import com.techelevator.application.model.Beer;
import com.techelevator.application.model.Brewery;

public class BeerController {
	@Autowired
	private beerDao beerDAO;
	
	@Autowired
	private breweryDao breweryDAO;
	
	@Autowired
	private reviewDao reviewDAO;
	
	@RequestMapping(path="/beers", method=RequestMethod.GET)
	public String showAllBeers(ModelMap modelHolder) {
		List<Beer> beerList = beerDAO.getAllBeer();
		List<Brewery> breweries = breweryDAO.getAllBreweries();
		
		modelHolder.put("allBeers", beerList);
		modelHolder.put("allBreweries", breweries);
		return "beers";
	}
}
