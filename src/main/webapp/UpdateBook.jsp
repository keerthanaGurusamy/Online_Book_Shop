<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="updatebook" method="post">

<label for="booktitle">Book title :</label><br>
<input type="text" name="booktitle" id="booktitle" class="booktitle" required><br><br>

<label for="price">Price :</label><br>
<input type="text" name="price" id="price" class="price" required><br><br>

<button type ="submit">update</button>
</form>
</body>
</html>