<%@page import="com.onlinebookshop.daoimpl.Ratingdaoimpl"%>
<%@page import="com.onlinebookshop.model.Bookdetails"%>
<%@page import="com.onlinebookshop.daoimpl.BookdetailsDaoimpl"%>
<%@page import="com.onlinebookshop.model.ProductDetails"%>
<%@page import="com.onlinebookshop.model.Rating" %>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body{
    background-image: url(image/book.jpg);
    background-repeat:repeat;
    color:white;
    background-size:1700px 700px;
    background-attachment: fixed;
    font-weight: 1000;
    font-size: 18px;
    font-weight:bold;  
}

img{
width: 250px;
padding:20px;
border-radius: 14%;
margin-top: 50px;
margin-left:60px;

}
span{
position : relative;
top:280px;
left: -300px;
font-size: 16px;

}
table td{
padding-bottom: 60px;
}
b{
padding-right: 20px;
}
.book{
text-align: left;

}
.btn {
margin-right: 30px;
margin-left: 30px;
}
button{
padding-top: 5px;
padding-bottom: 5px;
}
ul
    {
        list-style: none;
        background-color:SaddleBrown;
        margin:0;
        color: black;
        width: 97%;
        position: fixed;
    }
  li{
      display:inline-block;
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: center;
      font-size: 17px;
  }
  li a{
      text-decoration: none;
      color:white;
      display:block;
      padding-right: 40px;
      padding-left: 60px;
  }
   li a:hover{
  	opacity: 0.7;
  	color: black;
  	font-weight: bold;
  }
  
  .set1{
      margin-right: 10px;
  }
  .text{
  	padding: 7px;
  	border-radius: 4px;
  	border-color: transparent;
  }
  li button{
  	padding: 5.5px;
  	border-radius: 4px;
  	background-color: SandyBrown;
  	color: White;
  	font-weight: bold;
  	border-color: transparent;
  }
</style>
</head>
<body>
<form action="filterprice" method="post">
<div class="nav">
    <ul>
        
        <li><a href="ShowCart.jsp" class="set1">My Cart</a></li>
        <li><a href="MyProfile.jsp">User profile</a></li>
        <li><a href="RechargeWallet.jsp">Recharge Wallet</a><li>
        
        <li><a href="ViewMyOrders.jsp">View My Order</a></li>
        <li><a href="FilterByCondition.jsp">Old Books</a></li>
        <li><a href="login.jsp">Log Out</a></li>
    </ul>
</div>
</form>
<%!double rate; %>
<%
int userid = (int)session.getAttribute("userId");
BookdetailsDaoimpl bookdetaildao = new BookdetailsDaoimpl();
List<ProductDetails> showProduct= bookdetaildao.filterCondition(userid);
Ratingdaoimpl ratingdaoimpl = new Ratingdaoimpl();



%>
 
<table>
            <tbody>
                <tr>
                
                <%int count=0;
                for(ProductDetails bookdetails: showProduct){
                	
                	%>
                    <td>
                        <table id="producttable">
                            <tbody>
                                <tr>
                                    <td><img src="image/<%=bookdetails.getBookimages()%>" width=50 height=350 alt="book"></td>    
                                    <td class="book">
                                        <p><b>CATEGORY   :   </b><%=bookdetails.getCategory() %><br></p>
                                        
                                        <p><b>BOOK TITLE  :   </b><%=bookdetails.getBook_title()%><br></p>
                                        
                                        <p><b>PRICE :  </b><%=bookdetails.getPrice() %><br></p>
                                       
                                        
                                         <a href = "ShowProduct.jsp?BookId=<%=bookdetails.getBookid()%>"><button>View</button></a>
                                         
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