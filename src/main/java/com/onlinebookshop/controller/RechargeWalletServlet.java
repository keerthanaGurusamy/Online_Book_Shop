package com.onlinebookshop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinebookshop.daoimpl.UserdetailsDao;
import com.onlinebookshop.model.Userdetails;

@WebServlet("/recharge")
public class RechargeWalletServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 //String email = request.getParameter("UserEmail");
		
		HttpSession session = request.getSession();
		
		String email = (String) session.getAttribute("emailid");
		
		 int amount = Integer.parseInt(request.getParameter("Amount"));
		 
		 //Double cardNumber = Double.parseDouble(request.getParameter("AccountNumber"));
		 
		 //Double cvv = Double.parseDouble(request.getParameter("cvv"));
		 
		 
		 
		 UserdetailsDao userdao = new UserdetailsDao();
		 
		 
			
			int userid=Integer.parseInt(session.getAttribute("userId").toString());
			
			int wallet =userdao.walletballance(userid);
			 
			int addwallet = wallet+amount;
		 
		 Userdetails updatewallet = new Userdetails(null,0,null,email,null,addwallet);
		 
		 
		 
		boolean wall= userdao.updatewall(updatewallet);
		
		
		
		 if(wall)
		 {
			 response.sendRedirect("ShowBook.jsp");
		 }
		 else {
			 response.getWriter().print("Wallet not recharged");
		 }

	}

}
