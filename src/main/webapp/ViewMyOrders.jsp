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
   background-image:url("image/backgroundimg.jpeg");
   background-size:cover;
}
*{
			margin:0;
			padding:0;
		}
        li{
            list-style:none;
            display: inline-flex;
            padding-top : 18px;
            padding-bottom: 18px;
            padding-left: 40px; 
        }
        ul{
        	background-color: DodgerBlue;
        }
        li a{
        	list-style: none;
        	text-decoration: none;
        	color: black;
        	font-size: 18px;
        	font-weight:bold;
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

<td><%=viewOrder.getBook_id()%></td>
<td><%=viewOrder.getQuantity()%></td>
<td><%=viewOrder.getTotal_cost()%></td>
<td><%=viewOrder.getOrder_date()%></td>
<td><%=viewOrder.getStatus() %></td>
<td><span><a href = "cancelorder?orderid=<%=viewOrder.getOrder_id()%>"><button>Cancel</button></a></span><td>


</tr>

<%
}
%>
<%!
 String c;
%>
<%
if(session.getAttribute("cancel") != null){

	c=session.getAttribute("cancel").toString();
}
%>

</tbody>
          </table>


</div><br><br>
               <%=c %>
               <%session.removeAttribute(c); %>
</body>
</html>
</html>