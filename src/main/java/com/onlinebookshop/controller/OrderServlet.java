package com.onlinebookshop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinebookshop.daoimpl.BookdetailsDaoimpl;
import com.onlinebookshop.daoimpl.OrderDetailsDaoimpl;
import com.onlinebookshop.daoimpl.UserdetailsDao;
import com.onlinebookshop.model.OrderDetails;
import com.onlinebookshop.model.Userdetails;

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		HttpSession session = request.getSession();
		
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		System.out.println("Quantity"+quantity);
		
		int userid=Integer.parseInt(session.getAttribute("userId").toString());
		System.out.println("user Id :"+userid);
		String userName=(String) session.getAttribute("emailid");
		System.out.println("user name :"+userName);
		int itemid = (int) session.getAttribute("itemidcart");
		System.out.println("Book Name :"+itemid);
		
		BookdetailsDaoimpl bookdetails = new BookdetailsDaoimpl();
		
		
		int price = bookdetails.findPrice(itemid);
		System.out.println("Price :"+price);
		
		int totalprice = quantity*price;
		System.out.println("total price :" + totalprice );
		
		OrderDetailsDaoimpl orderDao = new OrderDetailsDaoimpl();
		
		OrderDetails orderBook = new OrderDetails(itemid,userid,quantity,totalprice);
		orderDao.insertOrder(orderBook);
 
		UserdetailsDao userdao = new UserdetailsDao();
		
		int wallet =userdao.walletballance(userid);
		System.out.println("Wallet"+wallet);
		
		int newWallet=wallet-totalprice;
		System.out.println(newWallet);
		
		Userdetails user = new Userdetails(null,0,null,userName,null,newWallet);
		userdao.updatewall(user);
		response.sendRedirect("ordermsg.jsp");
	}

	

}
