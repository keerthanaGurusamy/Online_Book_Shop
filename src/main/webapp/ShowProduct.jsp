<%@page import="com.onlinebookshop.model.Bookdetails"%>
<%@page import="com.onlinebookshop.daoimpl.BookdetailsDaoimpl"%>


<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
img{
width: 350px;
padding:20px;
}
span{
position : relative;
top:280px;
left: -200px;

}
</style>
</head>
<body>
<%!
BookdetailsDaoimpl bookdetaildao = new BookdetailsDaoimpl();
List<Bookdetails> showProduct;

%>
<%
showProduct = bookdetaildao.showProduct();
%>
<table>
            <tbody>
                <tr>
                <p>Book List</p>
                <%int count=0;
                for(Bookdetails bookdetails: showProduct){
                	%>
                    <td>
                        <table id="producttable">
                            <tbody>
                                <tr>
                                    <td><img src=<%=bookdetails.getBookimages()%> alt="book"></td>    
                                    <td class="book">
                                        <span>Category: <%=bookdetails.getCategory() %> </span><br>
                                        <span> Description: <%=bookdetails.getDescription() %>  </span><br>
                                        <span>Book Title: <%=bookdetails.getBook_title()%> </span><br>
                                        <span>Book Code:<%=bookdetails.getBook_code() %> </span><br>
                                        <span>Price:<%=bookdetails.getPrice() %></span><br>
                                         <span>Publish Date:<%=bookdetails.getPublish_date() %></span><br>
                                         <span>Condition:<%=bookdetails.getCondition() %></span><br>
                                         <span><input type="Submit"></span>
                                       
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       <% count ++;
                       if(count==3){ %> 
                    	   </tr>
                    	   <tr>              
                     <%count=0; }}%>  
                       
                </tr>
            </tbody>
        </table>


</body>