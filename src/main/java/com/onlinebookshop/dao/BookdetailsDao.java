package com.onlinebookshop.dao;

import java.sql.ResultSet;
import java.util.List;

import com.onlinebookshop.model.Bookdetails;
import com.onlinebookshop.model.ProductDetails;

public interface BookdetailsDao {

	public int insertBooks(Bookdetails product);
	public void deleteBooks(String product);
	public List<Bookdetails> showProduct();
	public int findProductid(String book_title);
	public int findPrice(int proid);
	public void updateBooks(Bookdetails bookdetails);
	public ResultSet filterPrice(Bookdetails bookdetails);
	public List<Bookdetails> filterCondition();
}
