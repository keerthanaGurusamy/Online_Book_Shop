<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log In</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
<form action="LoginServlet" method="post">


<fieldset>
        <h2>Log in</h2>
        <label for="emailid">Email Id :</label><br>
        <input type="text" name="emailid" class="emailid" pattern="[a-z0-9]+[@][a-z]+[.][a-z]+{8,15}"  required><br><br>
        <label for="password">Password :</label><br>
        <input type="password" name="password" class="password" pattern="[A-Za-z0-9]{8,10}"  required><br><br>
        <button type ="submit">Log In</button></a><br><br>
        <a href="forgot password.html">Forgot password??</a><br><br>
        <p>Don't have an account??...
        <a href="Register.jsp">Register</a></p>
        
  </fieldset>
</form>
</body>
</html>