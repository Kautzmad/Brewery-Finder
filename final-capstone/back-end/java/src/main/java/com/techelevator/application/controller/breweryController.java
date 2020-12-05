package com.techelevator.application.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.application.dao.breweryDao;
import com.techelevator.application.model.Brewery;

@RestController
@CrossOrigin 
public class breweryController {
	
	@Autowired
	private breweryDao breweryDao;
	
	public breweryController(breweryDao breweryDao) {
		this.breweryDao = breweryDao;
	}
	
	@RequestMapping(path = "/breweries", method = RequestMethod.GET)
	public List<Brewery> getAllBreweries(){
		return breweryDao.getAllBreweries();
	}
	
}
