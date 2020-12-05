package com.techelevator.application.dao;

import java.util.List;

import com.techelevator.application.model.Review;

public interface reviewDao {

	List<Review> getReviews(Long beer_id);

}
