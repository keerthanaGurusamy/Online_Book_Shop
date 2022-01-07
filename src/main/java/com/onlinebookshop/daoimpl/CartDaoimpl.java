package com.onlinebookshop.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.onlinebookshop.model.*;
import com.onlinebookshop.util.Connectionutil;

public class CartDaoimpl {

	public void insertcart(Cart cart) {
	   	
		String insertQuery="insert into cart(book_id,cus_id)values(?,?)";
		Connection con = Connectionutil.getDbConnection();
		try {
			PreparedStatement pstm = con.prepareStatement(insertQuery);
			pstm.setInt(1, cart.getBook_id());
			pstm.setInt(2, cart.getCart_id());
			pstm.executeUpdate();
			pstm.executeUpdate("commit");
			System.out.println("Book added to cart");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	
	public List<Bookdetails> fetchCart(int cusid) {
		List<Bookdetails> booklist = new ArrayList<>();
		String Query = "select Category,Description,book_title,book_code,price,publish_date,condition,bookimages from bookdetails where book_id in (select book_id from cart where cus_id in ?) ";
		Connection con = Connectionutil.getDbConnection();
		try {
			PreparedStatement pstm = con.prepareStatement(Query);
			pstm.setInt(1, cusid);
	
			
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				
				booklist.add(new Bookdetails(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getDate(6).toLocalDate(),rs.getString(7),rs.getString(8)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return booklist;	
	}
	
	public List<Cart> allCart() {
		List<Cart> cartList = new ArrayList<Cart>();
		String cart ="select * from cart";
		Connection con = Connectionutil.getDbConnection();
		try {
			Statement stm = con.createStatement();
			ResultSet rs = stm.executeQuery(cart);
			while(rs.next()) {
				Cart cartmodel = new Cart(rs.getInt(1),rs.getInt(2),rs.getInt(3));
				cartList.add(cartmodel);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cartList;
		

	}
}
