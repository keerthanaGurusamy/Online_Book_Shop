<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Update</title>
</head>
<body>
<form action="updateprofile" method="post">
<label for="name">Name :</label><br>
<input type="text" name="username" class="username" required><br><br>
<label for="phoneno">Phone number :</label><br>
<input type="text" name="phoneno" class="phoneno" required><br><br>
<label for="address">Address :</label><br>
<input type="text" name="address" class="address" required><br><br>
<label for="email">Email ID :</label><br>
<input type="text" name="email" class="email" required><br><br>
<label for="password">Password :</label><br>
<input type="text" name="password" class="password" required><br><br>
<button type="submit">Update</button>
</form>
</body>
</html>