<%@page import="com.onlinebookshop.model.Userdetails"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recharge Wallet</title>

    <link rel="stylesheet" href="RechargeWallet.css">
</head>
<body>
<div class="nav">
    <ul>
        
        <li><a href="ShowCart.jsp" class="set1">My Cart</a></li>
        <li><a href="">User profile</a></li>
        <li><a href="RechargeWallet.jsp">Recharge Wallet</a><li>
    </ul>
</div>
<% Userdetails user = (Userdetails) session.getAttribute("currentuser");%>
<center><h2>Welcome <% out.print(user.getName());%>!</h2></center>

<form action="recharge" method="post">
    <fieldset class="signup">
       <h2>Recharge Your Wallet..</h2>

         <label for="emailId">Email Id:</label><br>
         <input type="email" name="UserEmail" id="emailId" placeholder="Enter email Id"  required ><br><br>
                 
         <label for="CardNumber">Card Number:</label><br>
         <input type="number" name="AccountNumber" id="AccountNumber" placeholder="Enter card number"  required autofocus ><br><br>
                 
         <label for="cvv">CVV:</label><br>
         <input type="number" name="cvv" id="cvv" placeholder="Enter CVV" Pattern="[0-9]+" maxlength="3" ><br><br>
         
         <label for="Amount">Amount:</label><br>
         <input type="text" name="Amount" id="amount" placeholder="Enter Amount" Pattern="[1-9][0-9]+" maxlength="5" ><br><br>
         
          
         <button type="submit">Recharge Wallet</button>
             
    </fieldset>
    </form>
</body>
</html>
