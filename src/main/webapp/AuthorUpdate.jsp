<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Author Update</title>
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
 
<form action="updateauthor" method="post">
<fieldset>
<label for="emailid">Email Id :</label><br>
<input type="text" name="emailid" class="emailid" pattern="[a-z0-9]+[@][a-z]+[.][a-z]+{8,15}"  required><br><br>
<label for="authorname">Author Name :</label><br>
<input type="text" name="authorname" class="authorname" pattern="[A-Za-z]{5,}" required><br><br>
<button type="submit">Update Author</button>
</fieldset>
</form>
</body>
</html>