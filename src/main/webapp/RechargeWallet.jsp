<%@page import="com.onlinebookshop.model.Userdetails"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recharge Wallet</title>

   <style>
   
body{
    background-image: url(image/new4.jpg);
    background-repeat: no-repeat;
    background-size: 2000px 2470px;
    color:black;
    font-weight: 100px;
}
fieldset{
    position: absolute;
    top: 140px;
    right: 40%;
    padding-right: 30px;
    padding-left: 30px;
    
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
  h2,h3{
  
  text-align: center;
  }
   </style>
</head>
<body>
<div class="nav">
    <ul>   
        <li><a href="ShowProduct.jsp">Show Product</a></li>      
        <li><a href="ShowCart.jsp" class="set1">My Cart</a></li>
        <li><a href="MyProfile.jsp">User profile</a></li>
        
        <li><a href="ViewMyOrders.jsp">View My Order</a></li>
        <li><a href="FilterByCondition.jsp">Old Books</a></li>
        <li><a href="login.jsp">Log Out</a></li>
        
    </ul>
</div>

<% Userdetails user = (Userdetails) session.getAttribute("currentuser");%>
<h2>Welcome <% out.print(user.getName());%>!</h2>
<h3>Available Wallet : <%out.print(user.getWallet());%></h3>

<form action="recharge" method="post">
    <fieldset class="signup">
       <h2>Recharge Your Wallet..</h2>

         <label for="emailId">Email Id:</label><br>
         <input type="email" name="UserEmail" id="emailId" placeholder="Enter email Id"  required ><br><br>
                 
         <label for="CardNumber">Card Number:</label><br>
         <input type="text" name="AccountNumber" id="AccountNumber" placeholder="---- ---- ----"  required autofocus ><br><br>
                 
         <label for="cvv">CVV:</label><br>
         <input type="number" name="cvv" id="cvv" placeholder="Enter CVV" Pattern="[0-9]+" maxlength="3" ><br><br>
         
         <label for="Amount">Amount:</label><br>
         <input type="text" name="Amount" id="amount" placeholder="Enter Amount" Pattern="[1-9][0-9]+" maxlength="5" ><br><br>
         
          
         <button type="submit">Recharge Wallet</button>
             
    </fieldset>
    </form>
</body>
</html>
