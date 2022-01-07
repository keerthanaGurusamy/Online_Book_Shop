<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete User</title>
</head>
<body>
<form action="deleteuser" method="post">
<label for="emailid">User Email Id :</label><br>
<input type="text" name="emailid" class="emailid" placeholder="Enter User EmailId to inactive" required><br><br>
<button type="submit">Delete</button>
</form>
</body>
</html>