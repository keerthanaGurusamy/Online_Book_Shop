package com.onlinebookshop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinebookshop.daoimpl.CartDaoimpl;

@WebServlet("/removecart")
public class RemoveCartServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		int bookid= Integer.parseInt(request.getParameter("bookid"));
		
		System.out.println("serv"+bookid);
	    session.setAttribute("bookid", bookid);
	   
	    CartDaoimpl cartdao = new CartDaoimpl();
	    cartdao.deleteCart(bookid);
	    
	    response.sendRedirect("ShowCart.jsp");
	}

}
