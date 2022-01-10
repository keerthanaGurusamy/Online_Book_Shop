 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Books</title>
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
            top: 80px;
            right: 40%;
            padding-right: 5px;
            padding-left: 50px;
            padding-bottom: 30px;
            padding-top: 10px
            
        }
        
        button{
        width: 60px;
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

<form action="AddBooks" method="post">
<fieldset>
<h4>Add Books :</h4><br>
<label for="category">Category :</label><br>
<input type="text" name="category" class="category"- pattern="[A-Z a-z]+" required><br><br>
<label for="description">Description :</label><br>
<input type="text" name="description" class="description" pattern="[A-Z a-z ,]{6,}" required><br><br>
<label for="booktitle">Book title :</label><br>
<input type="text" name="booktitle" class="booktitle" pattern="[A-z a-z,]{5,}" required><br><br>
<label for="bookcode">Book Code :</label><br>
<input type="text" name="bookcode" class="bookcode" pattern="[A-Z]+[0-9]{2,5}" required><br><br>
<label for="price">Price :</label><br>
<input type="text" name="price" class="price" Pattern="[1-9][0-9]+" maxlength="5" required><br><br>
<label for="publishdate">Publish Date :</label><br>
<input type="date" name="publishdate" class="publishdate" required><br><br>
<label for="condition">Condition :</label><br>
<input type="text" name="condition" class="condition" pattern="[A-Za-z]{3,10}" required><br><br>
<label for="image">Image :</label><br>
<input type="file" name="image" class="image" required><br><br>
<button type ="submit">Add</button>
</fieldset>
</form>
</body>
</html>