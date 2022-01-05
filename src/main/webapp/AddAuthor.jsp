<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="AddAuthor" method="post">
<label for="name">Name :</label><br>
<input type="text" name="authorname" class="author" required><br><br>
<label for="email">Email_Id :</label><br>
<input type="text" name="email" class="author" required><br><br>
<label for="booktitle">Book Id :</label><br>
<input type="text" name="bookid" class="author" required><br><br>
<button type ="submit">Add</button>
</form>
</body>
</html>