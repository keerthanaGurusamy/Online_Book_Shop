<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.onlinebookshop.model.Userdetails"%>
    <%@page import="java.util.*"%>
            <%@page import="com.onlinebookshop.daoimpl.UserdetailsDao"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USERS LIST PAGE</title>
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

 UserdetailsDao userdetailsdao = new UserdetailsDao();
        List<Userdetails> userList = new ArrayList<Userdetails>();
        userList = userdetailsdao.viewUser();
%>


<table border="2" id="allusers">
<thead>
<tr>
  <th >S.no</th>
<th>Name</th>
<th>Phone No</th>
<th>Address</th>
<th>Email_id</th>
<th>Password</th>
<th>Wallet</th>
</tr>
</thead>
<br>
<br>

<tbody>
<%
int i = 0;
for (Userdetails viewUser : userList) {
	i++;
%>
<tr>


<td><%=i%></td>
<td><%=viewUser.getName()%></td>
<td><%=viewUser.getPhoneNo()%></td>
<td><%=viewUser.getAddress()%></td>
<td> <%=viewUser.getEmail_id()%></td>
<td> <%=viewUser.getPassword()%></td>
<td> <%=viewUser.getWallet()%></td>
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