<%@page import="com.onlinebookshop.model.Cart"%>
<%@page import="com.onlinebookshop.daoimpl.CartDaoimpl"%>
<%@page import="com.onlinebookshop.model.ProductDetails"%>
<%@page import="com.onlinebookshop.model.Rating"%>
<%@page import="com.onlinebookshop.daoimpl.Ratingdaoimpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.onlinebookshop.model.Bookdetails"%>
<%@page import="com.onlinebookshop.daoimpl.BookdetailsDaoimpl"%>
<%@page import="java.util.*"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Cart</title>
<style>
body{
background-color:#cdc8b1;
}
ul
    {
        list-style: none;
        background-color: #1c1c1c;
        margin:0;
    }
  li{
      display:inline-block;
      padding-top: 14px;
      padding-bottom: 14px;
      text-align: center;
      font-size: 17px;
  }
  li a{
      text-decoration: none;
      color:white;
      display:block;
      padding-right: 6px;
      padding-left: 7px;
  }
 li  button{
      margin-right: 500px;
  }
  
  .set1{
      margin-right: 10px;
  }
  h3{
  margin-left: 600px;
  }
</style>
</head>
<body>
<div class="nav">
    <ul>        
        <li><a href="ShowProduct.jsp" class="set1">Show Products</a></li>
        <li><a href="MyProfile.jsp">User profile</a></li>
        <li><a href="RechargeWallet.jsp">Recharge Wallet</a><li>
        <li><a href="Ratings.jsp">Add Ratings</a></li>
        <li><a href="ViewMyOrders.jsp">View My Order</a></li>
        
    </ul>
</div>
<%! int bookid;
    int cusid;
    double rate;
%>
<%
CartDaoimpl cartDaoimpl = new CartDaoimpl();
 Cart cartmodel = new  Cart();
  cusid= (int)session.getAttribute("userId");
 
  List<ProductDetails> productsList =cartDaoimpl.fetchCart(cusid);
  Ratingdaoimpl ratingdaoimpl = new Ratingdaoimpl();

%>
<table>
            <tbody>
                <tr>
                 <h3>MY CART</h3>
                <% int count=0;
                for(ProductDetails bookdetails: productsList){
                	%>
                    <td>
                        <table id="producttable">
                        
                       
                            <tbody>
                                <tr>
                                    <td><img src="image/<%=bookdetails.getBookimages()%>" width=150 height=300 alt="book"></td>    
                                    <td class="book">
                                         <span><b>Category: </b><%=bookdetails.getCategory() %> </span><br>
                                         <span><b>Description: </b><%=bookdetails.getDescription() %>  </span><br>
                                         <span><b>Book Title: </b><%=bookdetails.getBook_title()%> </span><br>
                                         <span><b>Book Code:</b><%=bookdetails.getBook_code() %> </span><br>
                                         <span><b>Price:</b><%=bookdetails.getPrice() %></span><br>
                                         <span><b>Publish Date:</b><%=bookdetails.getPublish_date()%></span><br>
                                         <span><b>Condition:</b><%=bookdetails.getCondition() %></span><br>
                                         <span><b>Author Name:</b><%=bookdetails.getName() %></span><br>
                                         <span><b>Author Email:</b><%=bookdetails.getEmail_id() %></span><br>
                                         <%
                                         Rating rating = new Rating();
                                         rating.setBook_id(bookdetails.getBookid());
                                         rate = ratingdaoimpl.fetchrating(rating);
                                         
                                         %>
                                         <span><b>Ratings:</b><%=rate %></span><br><br>
                                         <span><a href = "BuyOrder.jsp?bookid=<%=bookdetails.getBookid()%>"><button>Buy</button></a></span>
                                         <span><a href = "removecart?bookid=<%=bookdetails.getBookid()%>"><button>Remove</button></a></span>
                                         
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