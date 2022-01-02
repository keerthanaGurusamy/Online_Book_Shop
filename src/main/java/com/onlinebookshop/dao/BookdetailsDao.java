package com.onlinebookshop.dao;

import java.sql.ResultSet;
import java.util.List;

import com.onlinebookshop.model.Bookdetails;

public interface BookdetailsDao {

	public void insertBooks(Bookdetails product);
	public void deleteBooks(String product);
	public List<Bookdetails> showProduct();
	public int findProductid(String book_title);
	public int findPrice(int proid);
	public void updateBooks(int price,String book_title);
	public ResultSet filterPrice(int price);
	public List<Bookdetails> filterCondition();
}
