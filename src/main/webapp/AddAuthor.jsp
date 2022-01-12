<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Author</title>
<style>
body{
   background-color: #cce5ff;
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
<form action="AddAuthor" method="post">
<fieldset>
<label for="name">Name :</label><br>
<input type="text" name="authorname" class="author" required><br><br>
<label for="email">Email_Id :</label><br>
<input type="text" name="email" class="author" required><br><br>
<label for="booktitle">Book Name :</label><br>
<input type="text" name="bookname" class="author" required><br><br>
<button type ="submit">Add</button>
</fieldset>
<%!
		String flag1;
	%>
	<%
		if(session.getAttribute("addauthor") != null){
		flag1 = session.getAttribute("addauthor").toString();
	%>
		<h4><%=flag1%></h4>
	<% }%>
 
	<%session.removeAttribute("addauthor");
    %>


</form>
</body>
</html>