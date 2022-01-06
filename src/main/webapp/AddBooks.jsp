<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Books</title>
</head>
<body>
<div class="nav">
    <center><h1>Books Wagon</h1></center>
</div>
<aside>
<a href="AddBooks.jsp">Add Books</a><br><br>
<a href="DeleteBooks.jsp">Delete Books</a><br><br>
<a href="ViewUser.jsp">View User</a><br><br>
<a href="DeleteUser.jsp">Delete User</a><br><br>
<a href="UpdateBook.jsp">Update Book</a><br><br>
<a href="AddAuthor.jsp">Add Author</a><br><br>
<a href="AuthorUpdate.jsp">Update Author</a><br><br>
<a href="ViewAuthor.jsp">View Author</a><br><br>
<a href="ShowProduct.jsp">Show Products</a>
</aside>

<form action="AddBooks" method="post">
<label for="category">Category :</label><br>
<input type="text" name="category" class="category" required><br><br>
<label for="description">Description :</label><br>
<input type="text" name="description" class="description" required><br><br>
<label for="booktitle">Book title :</label><br>
<input type="text" name="booktitle" class="booktitle" required><br><br>
<label for="bookcode">Book Code :</label><br>
<input type="text" name="bookcode" class="bookcode" required><br><br>
<label for="price">Price :</label><br>
<input type="text" name="price" class="price" required><br><br>
<label for="publishdate">Publish Date :</label><br>
<input type="date" name="publishdate" class="publishdate" required><br><br>
<label for="condition">Condition :</label><br>
<input type="text" name="condition" class="condition" required><br><br>
<label for="image">Image :</label><br>
<input type="text" name="image" class="image" required><br><br>
<button type ="submit">Add</button>
</form>
</body>
</html>