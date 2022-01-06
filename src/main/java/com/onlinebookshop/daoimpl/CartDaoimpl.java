package com.onlinebookshop.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.onlinebookshop.model.*;
import com.onlinebookshop.util.Connectionutil;

public class CartDaoimpl {

	public void insertcart(Cart cart) {
	   	
		String insertQuery="insert into cart(book_id)values(?)";
		Connection con = Connectionutil.getDbConnection();
		try {
			PreparedStatement pstm = con.prepareStatement(insertQuery);
			pstm.setInt(1, cart.getBook_id());
			pstm.executeUpdate();
			pstm.executeUpdate("commit");
			System.out.println("Food items are inserted");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	
	public List<Bookdetails> fetchCart(Cart cart) {
		List<Bookdetails> booklist = new ArrayList<>();
		String Query = "select * from bookdetails where book_id in (select book_id from cart)";
		Connection con = Connectionutil.getDbConnection();
		try {
			PreparedStatement pstm = con.prepareStatement(Query);
			
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				
				booklist.add(new Bookdetails(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6),rs.getDate(7).toLocalDate(),rs.getString(8),rs.getString(9)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;	
	}
}
