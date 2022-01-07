  <%@page import="com.onlinebookshop.model.Bookdetails"%>
<%@page import="com.onlinebookshop.daoimpl.BookdetailsDaoimpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.onlinebookshop.model.OrderDetails"%>
<%@page import="com.onlinebookshop.daoimpl.OrderDetailsDaoimpl"%>
<%@page import="java.util.*"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Order</title>
</head>
<body>
<%! int bookid;
    int cusid;
%>
<%
OrderDetailsDaoimpl orderDaoimpl = new OrderDetailsDaoimpl();
 
  cusid= (int)session.getAttribute("userId");
  List<Bookdetails> productsList =orderDaoimpl.viewOrder(cusid);
  bookid = (int) session.getAttribute("itemidcart");
%>
<table>
            <tbody>
                <tr>
                <p>Book List</p>
                <% int count=0;
                for(Bookdetails bookdetails: productsList){
                	%>
                    <td>
                        <table id="producttable">
                            <tbody>
                                <tr>
                                    <td><img src=<%=bookdetails.getBookimages()%> width=150 height=300 alt="book"></td>    
                                    <td class="book">
                                        <span><b>Category: </b><%=bookdetails.getCategory() %> </span><br>
                                        <span><b>Description: </b><%=bookdetails.getDescription() %>  </span><br>
                                        <span><b>Book Title: </b><%=bookdetails.getBook_title()%> </span><br>
                                        <span><b>Book Code:</b><%=bookdetails.getBook_code() %> </span><br>
                                        <span><b>Price:</b><%=bookdetails.getPrice() %></span><br>
                                        <span><b>Publish Date:</b><%=bookdetails.getPublish_date() %></span><br>
                                        <span><a href = "BuyOrder.jsp?bookid=<%=bookdetails.getBookid()%>"><button>Buy</button></a></span>
                                       
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       <% count ++;
                       if(count==2){ %> 
                    	   </tr>
                    	   <tr>              
                     <%count=0; }}%>  
                       
                </tr>
            </tbody>
        </table>
</body>
</html>