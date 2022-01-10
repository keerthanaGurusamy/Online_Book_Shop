<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ratings</title>
<style>
body{
  background-image: url(image/book.jpg);
    background-repeat: no-repeat;
    background-size: 1350px 800px; 
    color: white;
}
fieldset{
    position: absolute;
    top: 140px;
    right: 40%;
    padding-right: 30px;
    padding-left: 30px;
    
}
ul
    {
        list-style: none;
        background-color: #1c1c1c;
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
      padding-right: 6px;
      padding-left: 7px;
  }
 li  button{
      margin-right: 500px;
  }
  
  .set1{
      margin-right: 10px;
  }
</style>
</head>
<body>

<form action="rating" method="post">
<div class="nav">
    <ul>
        
        
        <li><a href="ShowCart.jsp" class="set1">My Cart</a></li>
        <li><a href="MyProfile.jsp">User profile</a></li>
        <li><a href="RechargeWallet.jsp">Recharge Wallet</a><li>
        <li><a href="ViewMyOrders.jsp">View My Order</a></li>
        
    </ul>
</div>

<fieldset>
<h2>Add Your Ratings..</h2><br>
<label for="bookname">Book Name :</label><br>
<input type="text" name="bookname" class="bookname"  required><br><br>
<label for="ratings">Ratings :</label><br>
<input type="number" name="ratings" class="ratings" required><br><br>
<button type="submit">Add</button>
</fieldset>
</form>
</body>
</html>