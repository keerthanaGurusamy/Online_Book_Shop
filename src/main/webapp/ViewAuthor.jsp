<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.onlinebookshop.model.AuthorDetails"%>
    <%@page import="java.util.*"%>
            <%@page import="com.onlinebookshop.daoimpl.AuthorDetailsDaoimpl"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AUTHOR LIST</title>
<style>
#allusers table,th,tr,td{
        border: 1px solid black;
        border-collapse: collapse;
        padding: 10px;
        }
</style>
</head>
<body>
<%

AuthorDetailsDaoimpl authordao = new AuthorDetailsDaoimpl();
        List<AuthorDetails> authorList = new ArrayList<AuthorDetails>();
        authorList = authordao.showAuthor();
%>


<table border="2" id="allusers">
<thead>
<tr>
  <th >S.no</th>
<th>Name</th>
<th>Email_id</th>
<th>Book_id</th>
</tr>
</thead>
<br>
<br>

<tbody>
<%
int i = 0;
for (AuthorDetails viewAuthor : authorList) {
	i++;
%>
<tr>


<td><%=i%></td>
<td><%=viewAuthor.getName()%></td>
<td> <%=viewAuthor.getEmail_id()%></td>
<td> <%=viewAuthor.getBook_id()%></td>
</tr>

<%
}
%>
</tbody>
          </table>


</body>
</html>
 
</body>
</html>