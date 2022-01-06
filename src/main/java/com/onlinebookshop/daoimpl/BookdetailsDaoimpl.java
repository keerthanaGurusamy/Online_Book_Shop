package com.onlinebookshop.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.onlinebookshop.dao.BookdetailsDao;
import com.onlinebookshop.model.Bookdetails;
import com.onlinebookshop.model.Userdetails;
import com.onlinebookshop.util.Connectionutil;

public class BookdetailsDaoimpl implements BookdetailsDao{
	
	public int insertBooks(Bookdetails product)
	{
		String  insert="insert into bookdetails(category,description,book_title,book_code,price,publish_date,condition,bookimages)values(?,?,?,?,?,?,?,?)";
		Connection con = Connectionutil.getDbConnection();
		PreparedStatement pstm=null;
		try {
			pstm =con.prepareStatement(insert);
			pstm.setString(1, product.getCategory());
			pstm.setString(2, product.getDescription());
			pstm.setString(3, product.getBook_title());
			pstm.setString(4, product.getBook_code());
			pstm.setInt(5, product.getPrice());
			pstm.setDate(6, java.sql.Date.valueOf(product.getPublish_date()));
			pstm.setString(7, product.getCondition());
			pstm.setString(8, product.getBookimages());
			pstm.executeUpdate();
			System.out.println("Book details are inserted ");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Try again");
		}
		return 1;
	}
	
	public void deleteBooks(String product) {
		String delete="delete from bookdetails where book_title=?";
		Connection con = Connectionutil.getDbConnection();
		PreparedStatement pstm=null;
		try {
			pstm=con.prepareStatement(delete);
			pstm.setString(1, product);
			int noOfRows=pstm.executeUpdate();
			System.out.println(noOfRows+ "row deleted");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public List<Bookdetails> showProduct()
	{
		List<Bookdetails> productsList=new ArrayList<Bookdetails>();
		
		String show = "select * from bookdetails";
		Connection con = Connectionutil.getDbConnection();
		try {
			Statement stm=con.createStatement();
			ResultSet rs=stm.executeQuery(show);
			while(rs.next())
			{
				Bookdetails product = new Bookdetails(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6),rs.getDate(7).toLocalDate(),rs.getString(8),rs.getString(9));
				productsList.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return productsList;
	}
	public int findProductid(String book_title) {
		String find="select book_id from bookdetails where book_title='"+book_title+"'";
		Connection con = Connectionutil.getDbConnection();
		int productId =0;
		try {
			Statement stm =con.createStatement();
			ResultSet rs=stm.executeQuery(find);
			if(rs.next())
			{
				productId=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return productId;
		
	}
	
	public int findPrice(int proid) {
		String query="select price from bookdetails where book_id='"+proid+"'";
		Connection con=Connectionutil.getDbConnection();
		Statement stmt;
		int price=0;
		try {
			stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			if(rs.next())
			{
				price=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return price;
	}
	
	public void updateBooks(Bookdetails bookdetails) {
		String updateQuery="update bookdetails set price=? where book_title=?";
		Connection con = Connectionutil.getDbConnection();
		try {
			PreparedStatement pst=con.prepareStatement(updateQuery);
			pst.setInt(1, bookdetails.getPrice());
			pst.setString(2, bookdetails.getBook_title());
			int i=pst.executeUpdate();
			System.out.println(i+"row updated");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Try again");
		}
	}
	
	public ResultSet filterPrice(Bookdetails bookdetails) {
		List<Bookdetails> filterList=new ArrayList<Bookdetails>();
		String filter="select * from bookdetails where price <= ?";
		Connection con = Connectionutil.getDbConnection();
		try {
			PreparedStatement preparedStatement = con.prepareStatement(filter);
			preparedStatement.setInt(1, bookdetails.getPrice());
			ResultSet rs = preparedStatement.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return null;
	}
	
	public List<Bookdetails> filterCondition() {
		List<Bookdetails> conditionList=new ArrayList<Bookdetails>();
		String condition="select * from bookdetails where condition='Old' ";
		Connection con = Connectionutil.getDbConnection();
		try {
			Statement stm=con.createStatement();
			ResultSet rs=stm.executeQuery(condition);
			while(rs.next())
			{
				Bookdetails product = new Bookdetails(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6),rs.getDate(7).toLocalDate(),rs.getString(8),rs.getString(9));
				conditionList.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("no records");
		}	
		return conditionList;
	}
	
	public List<Bookdetails> categoryList() {
		List<Bookdetails> categoryList=new ArrayList<Bookdetails>();
		String category ="select category from bookdetails";
		Connection con = Connectionutil.getDbConnection();
		Statement stm;
		try {
			stm = con.createStatement();
			ResultSet rs=stm.executeQuery(category);
			while(rs.next())
			{
			Bookdetails categorylist = new Bookdetails(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6),rs.getDate(7).toLocalDate(),rs.getString(8),rs.getString(9));
			categoryList.add(categorylist);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return categoryList;
	}

}
