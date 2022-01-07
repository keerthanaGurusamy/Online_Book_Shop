<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Books</title>
<link rel="stylesheet" href="AddBooks.css">
</head>
<body>
<div class="nav">
    <center><h1>Books Wagon</h1></center>
</div>
<form action="DeleteBooks" method="post">
<fieldset>
<label for="booktitle">Book Title :</label><br>
<input type="text" name="booktitle" class="booktitle" placeholder="Enter the book name to delete" required><br><br>
<button type ="submit">Delete books</button>
</fieldset>
</form>
</body>
</html>