package com.onlinebookshop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.onlinebookshop.daoimpl.CartDaoimpl;
import com.onlinebookshop.model.Cart;

@WebServlet("/addcartserv")
public class AddCart extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int bid= Integer.parseInt(request.getParameter("bookid"));
		
    	System.out.println("bid"+bid);
		
		
		int userId=(int) session.getAttribute("userId");
		
		
		CartDaoimpl cart = new CartDaoimpl();
		Cart cart2 = new Cart(userId,bid);
		cart.insertcart(cart2);
		session.setAttribute("itemidcart", bid);
		response.sendRedirect("cartsuccess.jsp");
	}
	

}
