package com.onlinebookshop.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinebookshop.daoimpl.BookdetailsDaoimpl;
import com.onlinebookshop.model.Bookdetails;


@WebServlet("/filterprice")
public class FilterPriceServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int price =Integer.parseInt(request.getParameter("search"));
		
		BookdetailsDaoimpl bookdao = new BookdetailsDaoimpl();
		Bookdetails book =new Bookdetails(0,null,null,null,null,price,null,null,null);
		
		HttpSession session=request.getSession();
	    
	    
		ResultSet rs = bookdao.filterPrice(book);
		session.setAttribute("filteredbook", rs);
		response.sendRedirect("FilterPriceProduct.jsp");
		
		
	}

}
