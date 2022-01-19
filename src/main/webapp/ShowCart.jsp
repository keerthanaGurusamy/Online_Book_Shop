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
    background-image: url(image/new4.jpg);
    background-repeat: no-repeat;
    background-size: 2000px 2470px;
    color:black;
    font-weight: 100px;
}
img{
width: 250px;
padding:20px;
border-radius: 14%;
box-shadow: 5px 15px 12px #888888;
}ul
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
      padding-right: 110px;
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
  b{
padding-right: 20px;
}
.btn {
margin-right: 30px;
margin-left: 30px;
}
button{
padding-top: 5px;
padding-bottom: 5px;
}
</style>
</head>
<body>
<div class="nav">
    <ul>        
        <li><a href="ShowProduct.jsp">Show Product</a></li> 
        <li><a href="MyProfile.jsp">User profile</a></li>
        <li><a href="RechargeWallet.jsp">Recharge Wallet</a><li>
        
        <li><a href="ViewMyOrders.jsp">View My Order</a></li>
        <li><a href="FilterByCondition.jsp">Old Books</a></li>
        <li><a href="login.jsp">Log Out</a></li>
        
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
                                    <td><img src="image/<%=bookdetails.getBookimages()%>" width=150 height=350 alt="book"></td>    
                                    <td class="book">
                                         <p><b>CATEGORY  :    </b><%=bookdetails.getCategory() %> <br></p>
                                         <p><b>DESCRIPTION: </b><%=bookdetails.getDescription() %><br></p>
                                         <p><b>BOOK TITLE: </b><%=bookdetails.getBook_title()%><br></p>
                                         <p><b>BOOK CODE:</b><%=bookdetails.getBook_code() %><br></p>
                                         <p><b>PRICE:</b><%=bookdetails.getPrice() %><br></p>
                                         <p><b>PUBLISH DATE:</b><%=bookdetails.getPublish_date()%><br></p>
                                         <p><b>CONDITION:</b><%=bookdetails.getCondition() %><br></p>
                                         <p><b>AUTHOR NAME:</b><%=bookdetails.getName() %><br></p>
                                         <p><b>AUTHOR EMAIL:</b><%=bookdetails.getEmail_id() %><br></p>
                                         <%
                                         Rating rating = new Rating();
                                         rating.setBook_id(bookdetails.getBookid());
                                         rate = ratingdaoimpl.fetchrating(rating);
                                         
                                         %>
                                        <b>RATINGS:</b><%=rate %><br><br>
                                         <a href = "BuyOrder.jsp?bookid=<%=bookdetails.getBookid()%>"><button class="btn">Buy</button></a>
                                        <a href = "removecart?bookid=<%=bookdetails.getBookid()%>"><button>Remove</button></a>
                                         
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