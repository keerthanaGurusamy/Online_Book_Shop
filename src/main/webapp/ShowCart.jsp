<%@page import="com.onlinebookshop.model.Cart"%>
<%@page import="com.onlinebookshop.daoimpl.CartDaoimpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.onlinebookshop.model.Bookdetails"%>
<%@page import="com.onlinebookshop.daoimpl.BookdetailsDaoimpl"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
CartDaoimpl cartDaoimpl = new CartDaoimpl();
List<Bookdetails> showProduct;
%>
<%! int bookid; %>
<%
 bookid =(int)session.getAttribute("itemidcart");
Cart cart = new Cart();
showProduct =cartDaoimpl.fetchCart(cart);
%>
<table>
            <tbody>
                <tr>
                <p>Book List</p>
                <%int count=0;
                for(Bookdetails bookdetails: showProduct){
                	%>
                    <td>
                        <table id="producttable">
                            <tbody>
                                <tr>
                                    <td><img src=<%=bookdetails.getBookimages()%> width=50 height=300 alt="book"></td>    
                                    <td class="book">
                                        <span><b>Category: </b><%=bookdetails.getCategory() %> </span><br>
                                        <span><b>Description: </b><%=bookdetails.getDescription() %>  </span><br>
                                        <span><b>Book Title: </b><%=bookdetails.getBook_title()%> </span><br>
                                        <span><b>Book Code:</b><%=bookdetails.getBook_code() %> </span><br>
                                        <span><b>Price:</b><%=bookdetails.getPrice() %></span><br>
                                         <span><b>Publish Date:</b><%=bookdetails.getPublish_date() %></span><br>
                                         <span><a href = "addcartserv?bookid=<%=bookdetails.getBookid()%>">Add to Cart</a></span>
                                       
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