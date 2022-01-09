package com.onlinebookshop.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.onlinebookshop.dao.OrderDetailsDao;
import com.onlinebookshop.model.Bookdetails;
import com.onlinebookshop.model.OrderDetails;
import com.onlinebookshop.model.Userdetails;
import com.onlinebookshop.util.Connectionutil;

public class OrderDetailsDaoimpl implements OrderDetailsDao{

	public void insertOrder(OrderDetails cart)
	{
		String insertQuery="insert into orderdetails(cus_id,book_id,quantity,total_cost) values(?,?,?,?)";
		Connection con = Connectionutil.getDbConnection();
		PreparedStatement pst = null;
		try {
			pst = con.prepareStatement(insertQuery);
			pst.setInt(1, cart.getCus_id());
			pst.setInt(2, cart.getBook_id());
			pst.setInt(3, cart.getQuantity());
			pst.setDouble(4, cart.getTotal_cost());
			pst.executeUpdate();
			System.out.println("Value inserted successfully");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Value not inserted");
		}
	}

		
	public List<OrderDetails> viewOrder()
	{
		List<OrderDetails> orderList=new ArrayList<OrderDetails>();
		//String view ="select Category,Description,book_title,book_code,price,publish_date,condition,bookimages from bookdetails where book_id in (select book_id from orderdetails where cus_id in ?)";
		
		String view = "select cus_id,book_id,quantity,total_cost,order_date from orderdetails";
		Connection con = Connectionutil.getDbConnection();
		try {
			Statement stm = con.createStatement();
			
			
			ResultSet rs = stm.executeQuery(view);
			while(rs.next())
			{
				//orderList.add(new Bookdetails(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getDate(6).toLocalDate(),rs.getString(7),rs.getString(8)));
				OrderDetails order = new OrderDetails(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getDouble(4),rs.getDate(5).toLocalDate());
				orderList.add(order);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return orderList;
	}
	
	public int updateCart(int quantity,int book_id)
	{
		String updateQuery="update orderdetails set quantity=? where book_id=?";
		Connection con = Connectionutil.getDbConnection();
		try {
			PreparedStatement pst=con.prepareStatement(updateQuery);
			pst.setInt(2, book_id);
			pst.setInt(1, quantity);
			int i=pst.executeUpdate();
			System.out.println(i+"row updated");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Try again");
		}
		return 0;
		
	}
	
	public int deleteCart(int bookid) {
		String delete="delete from orderdetails where book_id=?";
		Connection con = Connectionutil.getDbConnection();
		PreparedStatement pstm=null;
		try {
			pstm=con.prepareStatement(delete);
			pstm.setInt(1, bookid);
			int noOfRows=pstm.executeUpdate();
			System.out.println(noOfRows+ "row deleted");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	public List<OrderDetails> viewUserCart(int userid){
		
		List<OrderDetails> orderList=new ArrayList<OrderDetails>();
		String myCart ="select cus_id,book_id,quantity,total_cost,order_date from orderdetails where cus_id=?";
		
		Connection con = Connectionutil.getDbConnection();
		try {
			PreparedStatement pstm = con.prepareStatement(myCart);
			pstm.setInt(1, userid);
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				
				OrderDetails order = new OrderDetails(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getDouble(4),rs.getDate(5).toLocalDate());
				orderList.add(order);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orderList;
	}
}