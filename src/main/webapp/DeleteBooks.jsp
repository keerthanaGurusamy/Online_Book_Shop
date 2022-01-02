<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="DeleteBooks" method="post">
<label for="booktitle">Book Title :</label><br>
<input type="text" name="booktitle" class="booktitle" placeholder="Enter the book name to delete" required><br><br>
<button type ="submit">Delete books</button>
</form>
</body>
</html>