<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.onlinebookshop.model.Userdetails"%>
    <%@page import="java.util.*"%>
            <%@page import="com.onlinebookshop.daoimpl.UserdetailsDao"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USERS LIST PAGE</title>
<style>
body{
   background-image: url(image/book.jpg);
    background-repeat: no-repeat;
    background-size: 1350px 800px; 
    color: white;
    
    
}
fieldset{
            position: absolute;
            top: 120px;
            right: 40%;
            padding-right: 30px;
            padding-left: 30px;
            padding-top: 20px;
            padding-bottom:20px;
            
        }
        
        pre{
        size: 50px;
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
      padding-right: 40px;
      padding-left: 7px;
  }
 li  button{
      margin-right: 500px;
  }
  
  .set1{
      margin-right: 10px;
  }
  pre{
  font-size: 15px;
  }
  h2{
  padding-left: 500px;
  }
</style>
<body>
<%

 UserdetailsDao userdetailsdao = new UserdetailsDao();
 
int user=(int)session.getAttribute("userId");
        List<Userdetails> userList = new ArrayList<Userdetails>();
        userList = userdetailsdao.myProfile(user);
%>
<div class="nav">
    <ul>
        
        <li><a href="ShowCart.jsp" class="set1">My Cart</a></li>
        
        <li><a href="RechargeWallet.jsp">Recharge Wallet</a><li>
        <li><a href="Ratings.jsp">Add Ratings</a></li>
        <li><a href="ViewMyOrders.jsp">View My Order</a></li>
        
    </ul>
</div>
<h2>Books Wagon</h2>
<div>


<%
int i = 0;
for (Userdetails viewUser : userList) {
	i++;
%>
<fieldset>

<pre><b>Name         :  </b><%=viewUser.getName()%><br>
<b>Phone No     :  </b> <%=viewUser.getPhoneNo()%><br>
<b>Address      :  </b><%=viewUser.getAddress()%><br>
<b>Email_id     :  </b><%=viewUser.getEmail_id()%><br>
<b>Password     :  </b><%=viewUser.getPassword()%><br>
<b>Wallet       :  </b><%=viewUser.getWallet()%><br></pre>

<a href="UpdateProfile.jsp"><button type="submit">Update Profile</button></a>
</fieldset>

<%
}
%>

</div>
 
</body>
</html>