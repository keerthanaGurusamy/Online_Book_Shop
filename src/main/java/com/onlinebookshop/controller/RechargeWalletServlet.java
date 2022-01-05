package com.onlinebookshop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinebookshop.daoimpl.UserdetailsDao;
import com.onlinebookshop.model.Userdetails;


public class RechargeWalletServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String email = request.getParameter("UserEmail");
		 System.out.println(email);
		 Double cardNumber = Double.parseDouble(request.getParameter("AccountNumber"));
		 System.out.println(cardNumber);
		 Double cvv = Double.parseDouble(request.getParameter("cvv"));
		 System.out.println(cvv);
		 long phonenum = Long.parseLong(request.getParameter("MobileNumber"));
		 System.out.println(phonenum);
		 int amount = Integer.parseInt(request.getParameter("Amount"));
		 System.out.println(amount);
		 
		 UserdetailsDao userdao = new UserdetailsDao();
		 
		 Userdetails user = new Userdetails(null,phonenum,null,null,null,amount);
	}

}
