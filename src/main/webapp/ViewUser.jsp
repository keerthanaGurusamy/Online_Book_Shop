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
        table{
        	border: 2px solid black;
        	margin : 40px 200px;
        }
        th, td{
        	border: 2px solid black;
        	border-collapse: collapse;
        	padding : 10px;
        }
        
</style>
</head>
<body>
<aside>
<ul>
       <li><a href="ViewUser.jsp">View User</a></li>
		<li><a href="DeleteUser.jsp">Delete User</a></li>
		
        <li><a href="AddBooks.jsp">Add Books</a></li>
		<li><a href="UpdateBook.jsp">Update Book</a></li>
		<li><a href="ViewAllBook.jsp">All Books</a></li>
		
		<li><a href="AddAuthor.jsp">Add Author</a></li>
		<li><a href="AuthorUpdate.jsp">Update Author</a></li>
		<li><a href="ViewAuthor.jsp">View Author</a></li>
		
		<li><a href="ViewAllOrders.jsp">View ALL Orders</a></li>
</ul>
</aside>
 <h2>Books Wagon</h2>

<%

 UserdetailsDao userdetailsdao = new UserdetailsDao();
        List<Userdetails> userList = new ArrayList<Userdetails>();
        userList = userdetailsdao.viewUser();
%>

<div class="table">
<table  id="allusers">
<thead>
<tr>
  <th >S.no</th>
<th>Name</th>
<th>Phone No</th>
<th>Address</th>
<th>Email_id</th>
<th>Password</th>
<th>Wallet</th>
</tr>
</thead>
<br>
<br>

<tbody>
<%
int i = 0;
for (Userdetails viewUser : userList) {
	i++;
%>
<tr>


<td><%=i%></td>
<td><%=viewUser.getName()%></td>
<td><%=viewUser.getPhoneNo()%></td>
<td><%=viewUser.getAddress()%></td>
<td> <%=viewUser.getEmail_id()%></td>
<td> <%=viewUser.getPassword()%></td>
<td> <%=viewUser.getWallet()%></td>
</tr>

<%
}
%>
</tbody>
          </table>


</div>
 
</body>
</html>