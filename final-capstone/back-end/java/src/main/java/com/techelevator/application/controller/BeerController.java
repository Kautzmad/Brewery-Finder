package com.techelevator.application.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.application.dao.beerDao;
import com.techelevator.application.dao.breweryDao;
import com.techelevator.application.dao.reviewDao;
import com.techelevator.application.model.Beer;
import com.techelevator.application.model.Brewery;
import com.techelevator.application.model.User;

@RestController
public class BeerController {
	@Autowired
	private beerDao beerDAO;
	
	@Autowired
	private breweryDao breweryDAO;
	
	@Autowired
	private reviewDao reviewDAO;
	
	
	/****************************************
	 * Controller
	 *
	 ***/
	
	public BeerController(beerDao beerDAO) {
		this.beerDAO = beerDAO;
	}
	
	/****************************************
	 * Request Mapping, shows beers
	 *
	 ***/
	
	@RequestMapping(path="/beers", method=RequestMethod.GET)
	public List<Beer> showAllBeers(ModelMap modelHolder) {
		List<Beer> beerList = beerDAO.getAllBeer();
		List<Brewery> breweries = breweryDAO.getAllBreweries();
		
		modelHolder.put("allBeers", beerList);
		modelHolder.put("allBreweries", breweries);
		return beerList;
	}
	
	/****************************************
	 * Request Mapping, add Beer
	 *
	 ***/
	
	@RequestMapping(path="/addBeer", method=RequestMethod.GET)
	public String showAddBeer() {
		return "addBeer";
	}
	
}
