<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="updateauthor" method="post">
<label for="emailid">Email Id :</label><br>
<input type="text" name="emailid" class="emailid" pattern="[a-z0-9]+[@][a-z]+[.][a-z]+{8,15}"  required><br><br>
<label for="authorname">Author Name :</label><br>
<input type="text" name="authorname" class="authorname" pattern="[A-Za-z]{5,}" required><br><br>
<button type="submit">Update Author</button>
</form>
</body>
</html>