<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Low Balance</title>
<style>
	
body{
 background-image: url(image/book.jpg);
    background-repeat: no-repeat;
    background-size: 1350px 800px; 
    color: white;
}
h1{
margin-left: 380px;
padding-top: 200px;
}
h2{
  margin-left: 490px
}
a{
    text-decoration: none;
    color: white;
}
ul
    {
        list-style: none;
        background-color: #1c1c1c;
        margin:0;
    }
  li{
      display:inline-block;
      padding-top: 10px;
      padding-bottom: 10px;
      text-align: center;
      font-size: 17px;
  }
  li a{
      text-decoration: none;
      color:white;
      display:block;
      padding-right: 7px;
      padding-left: 7px;
  }
 li  button{
      margin-right: 700px;
  }
  
  .set1{
      margin-right: 10px;
  }
</style>
</head>
<body>
<div class="nav">
    <ul>        
        <li><a href="ShowCart.jsp" class="set1">My Cart</a></li>
        <li><a href="MyProfile.jsp">User profile</a></li>
        <li><a href="RechargeWallet.jsp">Recharge Wallet</a><li>
        <li><a href="Ratings.jsp">Add Ratings</a></li>
        <li><a href="ViewMyOrders.jsp">View My Order</a></li>
        <li><a href="FilterByCondition.jsp">Old Books</a></li>
        
    </ul>
</div>
<h1>NOT ENOUGH AMOUNT IN YOUR WALLET !...</h1>
<h1>Recharge Your Wallet</h1>
<% int user=(int) session.getAttribute("newwallet");%>
<h2>Available Balance : <% out.print(user);%></h2>
</body>
</html>