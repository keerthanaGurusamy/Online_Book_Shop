<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buy Books</title>
</head>
<body>
<%
 int bookid=Integer.parseInt(request.getParameter("bookid"));
 session.setAttribute("Book",bookid);
%>
<fieldset>
<form action="OrderServlet" method="post">
<label for="quantity">Quantity:</label><br>
<input type="number" name="quantity" class="quantity"  required><br><br>
<button type="submit">Order</button>
</form>
</fieldset>
</body>
</html>