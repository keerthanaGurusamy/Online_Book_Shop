<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<form action="RegisterServlet" method="post">
<fieldset>
        <h2>Sign In</h2>
        <label for="username">User Name :</label><br>
        <input type="text" name="username" class="username" placeholder="Enter username" required><br><br>
        <label for="phonenumber">Phone number</label><br>
        <input type="text" name="phonenumber" class="phonenumber" required><br><br>
        <label for="email">Email Id</label><br>
        <input type="text" name="email" class="email" required><br><br>
        <label for="address">Address</label><br>
        <input type="text" name="address" class="address" required><br><br>
        <label for="password">Password :</label><br>
        <input type="text" name="password" class="password" placeholder="At least 6 characters" required><br><br>
        <label for="password">Repeat Password :</label><br>
        <input type="text" name="repeat" class="repeat"required><br><br>
        <button type="submit">Sign in</button>
    </fieldset>
</form>
</body>
</html>