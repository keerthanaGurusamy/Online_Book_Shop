package com.onlinebookshop.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinebookshop.daoimpl.BookdetailsDaoimpl;
import com.onlinebookshop.model.Bookdetails;

/**
 * Servlet implementation class AddBooksServlet
 */
@WebServlet("/AddBooks")
public class AddBooksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBooksServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		BookdetailsDaoimpl bookDao = new BookdetailsDaoimpl();
		String category =request.getParameter("category");
		String description =request.getParameter("description");
		String booktitle =request.getParameter("booktitle");
		String bookcode =request.getParameter("bookcode");
		Integer price =Integer.parseInt(request.getParameter("price"));
		String publishdate =request.getParameter("publishdate");
		String condition =request.getParameter("condition");
		Bookdetails bookdetails = new Bookdetails(category,description,booktitle,bookcode,price,publishdate,condition);
		bookDao.insertBooks(bookdetails);
		pw.write("inserted successfully");
		//doGet(request, response);
	}

}
