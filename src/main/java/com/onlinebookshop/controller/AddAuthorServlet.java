package com.onlinebookshop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinebookshop.daoimpl.AuthorDetailsDaoimpl;
import com.onlinebookshop.model.AuthorDetails;


/**
 * Servlet implementation class AddAuthorServlet
 */
@WebServlet("/AddAuthor")
public class AddAuthorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAuthorServlet() {
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
		
		String authorname =request.getParameter("authorname");
		String email = request.getParameter("email");
		String bookid = request.getParameter("bookid");
		AuthorDetails author = new AuthorDetails(authorname,email,bookid);
		AuthorDetailsDaoimpl authordao = new AuthorDetailsDaoimpl();
		authordao.insertAuthor(author);
		//doGet(request, response);
	}

}
