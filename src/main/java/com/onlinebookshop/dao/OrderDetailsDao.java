package com.onlinebookshop.dao;

import java.sql.ResultSet;
import java.util.List;

import com.onlinebookshop.model.OrderDetails;
import com.onlinebookshop.model.Userdetails;

public interface OrderDetailsDao {

	public void insertOrder(OrderDetails cart);
	public List<OrderDetails> viewOrder();
	public int updateCart(int quantity,int book_id);
	public int deleteCart(int bookid);
	public ResultSet viewUserCart(Userdetails currentUser);
}
