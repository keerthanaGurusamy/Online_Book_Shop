<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Already Rated</title>
<style>
body{
    background-image: url(image/new4.jpg);
    background-repeat: no-repeat;
    background-size: 2000px 2470px;
    color:black;
    font-weight: 100px;
}


button{
padding-top: 5px;
padding-bottom: 5px;
}
ul
    {
        list-style: none;
        background-color:rgb(72,72,72);
        margin:0;
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
      padding-right: 50px;
      padding-left: 50px;
  }
 li  button{
      margin-right: 350px;
  }
  
  .set1{
      margin-right: 10px;
  }
  h2{
  
  margin-top: 150px;
  text-align: center;
  }
</style>
</head>
<body>
<div class="nav">
    <ul>
        <li><a href="ShowProduct.jsp">Show Product</a><li> 
        <li><a href="ShowCart.jsp" class="set1">My Cart</a></li>
        <li><a href="MyProfile.jsp">User profile</a></li>
        <li><a href="RechargeWallet.jsp">Recharge Wallet</a><li>
        
        <li><a href="ViewMyOrders.jsp">View My Order</a></li>
        <li><a href="FilterByCondition.jsp">Old Books</a></li>
        <li><a href="login.jsp">Log Out</a></li>
    </ul>
</div>
<h2>You have already rated this book...</h2>
</body>
</html>