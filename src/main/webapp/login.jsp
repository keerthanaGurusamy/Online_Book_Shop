<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
<form>
<fieldset>
        <h2>Log in</h2>
        <label for="username">User Name :</label><br>
        <input type="text" name="username" class="username" placeholder="Enter username" required><br><br>
        <label for="password">Password :</label><br>
        <input type="text" name="password" class="password" placeholder="Enter password" required><br><br>
        <a href="index.html"><button type ="submit">Login In</button></a><br><br>
        <a href="forgot password.html">Forgot password??</a><br><br>
        <p>Dont have an account??...
        <a href="signin.html">Sign In</a></p>
  </fieldset>
</form>
</body>
</html>