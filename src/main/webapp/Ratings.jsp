<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ratings</title>
</head>
<body>
<form action="rating" method="post">
<label for="bookname">Book Name :</label><br>
<input type="text" name="bookname" class="bookname"  required><br><br>
<label for="ratings">Ratings :</label><br>
<input type="number" name="ratings" class="ratings" required><br><br>
<button type="submit">Add</button>
</form>
</body>
</html>