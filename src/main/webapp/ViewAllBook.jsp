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

 background-image: url(image/book.jpg);
    background-repeat: no-repeat;
    background-size: 1350px 800px; 
    color: white;
    }
    
.nav{
	background-color: black;
	color: white;
}
*{
			margin:0;
			padding:0;
		}
        li{
            list-style:none;
            padding: 30px 17px;
        }
        li a{
            text-decoration: none;
            color:white;
        }
        aside{
        	float:left;
        	margin-right: 380px;
        }
        h1{
        	border:1px solid white;
        	padding-top:220px;
        	padding-bottom: 20px;
        }
        h1{
        	border : 1px solid;
        	border-color: transparent;
        	padding: 280px 90px;
        }
        ul{
        	background-color:black;
        }
        h2{
        	text-aling:center;
        
        	padding-top: 20px 10px;
        	
        }
        fieldset{
            position: absolute;
            top: 130px;
            right: 40%;
            padding-right: 5px;
            padding-left: 50px;
            
        }
        <h2>Books Wagon</h2>
        #allusers table,th,tr,td{
        border: 1px solid black;
        border-collapse: collapse;
        padding: 10px;
        
        }
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