<%@page import="com.onlinebookshop.daoimpl.BookdetailsDaoimpl"%>
<%@page import ="com.onlinebookshop.model.Bookdetails" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.onlinebookshop.model.Userdetails"%>
    <%@page import="java.util.*"%>
            <%@page import="com.onlinebookshop.daoimpl.UserdetailsDao"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Books</title>
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

<%

         BookdetailsDaoimpl bookdetailsdao = new BookdetailsDaoimpl();
        List<Bookdetails> userList = new ArrayList<Bookdetails>();
         userList = bookdetailsdao.ViewAllBook();
%>

<div>
<table border="2" id="allusers">
<thead>
<tr>
  <th >S.no</th>
<th>Book Id</th>
<th>Category</th>
<th>Description</th>
<th>Book Title</th>
<th>Book Code</th>
<th>Price</th>
<th>Publish Date</th>
<th>Condition</th>
<th>Book image</th>
</tr>
</thead>
<br>
<br>

<tbody>
<%
int i = 0;
for (Bookdetails viewBook : userList) {
	i++;
%>
<tr>


<td><%=i%></td>
<td><%=viewBook.getBookid()%></td>
<td><%=viewBook.getCategory()%></td>
<td><%=viewBook.getDescription()%></td>
<td> <%=viewBook.getBook_title()%></td>
<td> <%=viewBook.getBook_code()%></td>
<td> <%=viewBook.getPrice()%></td>
<td> <%=viewBook.getPublish_date()%></td>
<td> <%=viewBook.getCondition()%></td>
<td> <%=viewBook.getBookimages()%></td>

</tr>

<%
}
%>
</tbody>
          </table>


</div>
 
</body>
</html>