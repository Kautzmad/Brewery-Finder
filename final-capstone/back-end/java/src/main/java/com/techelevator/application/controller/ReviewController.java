package com.techelevator.application.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.application.dao.reviewDao;
import com.techelevator.application.model.Review;

public class ReviewController {

	private reviewDao reviewDao;
	
	public void reviewController(reviewDao reviewDao) {
		this.reviewDao = reviewDao;
	}
	
	@RequestMapping(path = "/reviews/{beer_id}", method = RequestMethod.GET)
	public List<Review> getReviews(Long beerId){
		return reviewDao.getReviews(beerId);
	}
	
}
