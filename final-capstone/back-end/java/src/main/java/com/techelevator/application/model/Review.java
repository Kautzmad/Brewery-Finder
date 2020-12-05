package com.techelevator.application.model;

import java.time.LocalDateTime;

public class Review {
	// Instance Variables
	private String id;
	private String description;
	private int rating;
	private LocalDateTime createTime;
	private long beerId;
	private long userId;
	

	/****************************************
	 * Getters and Setters
	 *
	 ***/
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getRating() {
		return rating;
	}
	
	public void setRating(int rating) {
		this.rating = rating;
	}
	public LocalDateTime getCreateTime() {
		return createTime;
	}
	
	public void setCreateTime(LocalDateTime createTime) {
		this.createTime = createTime;
	}
	public long getBeerId() {
		return beerId;
	}
	
	public void setBeerId(long beerId) {
		this.beerId = beerId;
	}
	
	public long getUserId() {
		return userId;
	}
	
	public void setUserId(long userId) {
		this.userId = userId;
	}
	
	
}
