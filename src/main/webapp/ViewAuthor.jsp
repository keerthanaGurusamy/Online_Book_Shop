<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.onlinebookshop.model.AuthorDetails"%>
    <%@page import="java.util.*"%>
            <%@page import="com.onlinebookshop.daoimpl.AuthorDetailsDaoimpl"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AUTHOR LIST</title>
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
</head>
<body>

<%

AuthorDetailsDaoimpl authordao = new AuthorDetailsDaoimpl();
        List<AuthorDetails> authorList = new ArrayList<AuthorDetails>();
        authorList = authordao.showAuthor();
%>


<table border="2" id="allusers">
<thead>
<tr>
  <th >S.no</th>
<th>Name</th>
<th>Email_id</th>
<th>Book_id</th>
</tr>
</thead>
<br>
<br>

<tbody>
<%
int i = 0;
for (AuthorDetails viewAuthor : authorList) {
	i++;
%>
<tr>


<td><%=i%></td>
<td><%=viewAuthor.getName()%></td>
<td> <%=viewAuthor.getEmail_id()%></td>
<td> <%=viewAuthor.getBook_id()%></td>
</tr>

<%
}
%>
</tbody>
          </table>


</body>
</html>
 
</body>
</html>