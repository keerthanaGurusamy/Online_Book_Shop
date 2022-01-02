package com.onlinebookshop.dao;

import com.onlinebookshop.model.Rating;

public interface RatingDao {

	public int insertrating(Rating rating);
	public double fetchrating(Rating rating);
}
