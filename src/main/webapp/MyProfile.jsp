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

<%

 UserdetailsDao userdetailsdao = new UserdetailsDao();
 
int user=(int)session.getAttribute("userId");
        List<Userdetails> userList = new ArrayList<Userdetails>();
        userList = userdetailsdao.myProfile(user);
%>

<div>
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


</div>
 
</body>
</html>