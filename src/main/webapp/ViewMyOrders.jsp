<%@page import="com.onlinebookshop.model.OrderDetails"%>
<%@page import="com.onlinebookshop.daoimpl.OrderDetailsDaoimpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.onlinebookshop.model.Cart"%>
    <%@page import="java.util.*"%>
            <%@page import="com.onlinebookshop.daoimpl.CartDaoimpl"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Orders</title>
<style>
body{
    background-image: url(image/book.jpg);
    background-repeat: no-repeat;
    background-size: 1350px 800px; 
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
  table{
  margin-left: 450px;
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
       
        
    </ul>
</div>

<%
int userid = (int) session.getAttribute("userId");
        OrderDetailsDaoimpl orderdao = new OrderDetailsDaoimpl();
        List<OrderDetails> orderList = new ArrayList<OrderDetails>();
        orderList = orderdao.viewUserOrder(userid);
%>

<div>
<h3>My Orders</h3>
<table border="2" id="allusers">
<thead>
<tr>
  <th >S.no</th>
<th>Customer id</th>
<th>Book Id</th>
<th>Quantity</th>
<th>Total Cost</th>
<th>Order Date</th>
<th>Status</th>
</tr>
</thead>
<br>
<br>

<tbody>
<%
int i = 0;
for (OrderDetails viewOrder : orderList) {
	i++;
%>
<tr>


<td><%=i%></td>
<td><%=viewOrder.getCus_id()%></td>
<td><%=viewOrder.getBook_id()%></td>
<td><%=viewOrder.getQuantity()%></td>
<td><%=viewOrder.getTotal_cost()%></td>
<td><%=viewOrder.getOrder_date()%></td>
<td><%=viewOrder.getStatus()%></td>
</tr>

<%
}
%>
</tbody>
          </table>


</div>
 
</body>
</html>
</html>