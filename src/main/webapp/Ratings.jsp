<%@page import="com.onlinebookshop.daoimpl.BookdetailsDaoimpl"%>
<%@page import="com.onlinebookshop.model.Bookdetails" %>
<%@page import="com.onlinebookshop.model.ProductDetails" %>
<%@page import="com.onlinebookshop.model.Rating"%>
<%@page import="com.onlinebookshop.daoimpl.Ratingdaoimpl"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ratings</title>
<style>
body{
    background-image: url(image/new4.jpg);
    background-repeat: no-repeat;
    background-size: 2000px 2470px;
    color:black;
    font-weight: 100px;
}

fieldset {
	position: absolute;
	top: 140px;
	right: 40%;
	padding-right: 30px;
	padding-left: 30px;
}

ul {
	list-style: none;
	background-color: #1c1c1c;
	margin: 0;
}

li {
	display: inline-block;
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	font-size: 17px;
}

li a {
	text-decoration: none;
	color: white;
	display: block;
	padding-right: 6px;
	padding-left: 7px;
}

li  button {
	margin-right: 500px;
}

.set1 {
	margin-right: 10px;
}
</style>
</head>
<body>

	<form action="rating" method="post">
		<div class="nav">
			<ul>


				<li><a href="ShowCart.jsp" class="set1">My Cart</a></li>
				<li><a href="MyProfile.jsp">User profile</a></li>
				<li><a href="RechargeWallet.jsp">Recharge Wallet</a>
				<li>
				<li><a href="ViewMyOrders.jsp">View My Order</a></li>

			</ul>
		</div>
		<%!double rate;
		%>
		<%
		int bid = Integer.parseInt(request.getParameter("bookd"));
		BookdetailsDaoimpl bookdetailsDaoimpl = new BookdetailsDaoimpl();
		List<ProductDetails> bookdetail = bookdetailsDaoimpl.ratingproducts(bid);
		
		HttpSession session1 = request.getSession();
		session1.setAttribute("BookID", bid);
		
		Ratingdaoimpl ratingdaoimpl = new Ratingdaoimpl();
		%>

		<fieldset>
			<h2>Add Your Ratings..</h2>
			<br> <label for="ratings">Ratings :</label><br> 
			<input	type="number" name="ratings" class="ratings" required><br>
			<br>
			<button type="submit">Add</button>
		</fieldset>
<table>
            <tbody>
                <tr>
                
                <%int count=0;
                for(ProductDetails bookdetails : bookdetail){
                	
                	%>
                    <td>
                        <table id="producttable">
                            <tbody>
                                <tr>
                                    <td><img src="image/<%=bookdetails.getBookimages()%>" width=180 height=350 alt="book"></td>    
                                    <td class="book">
                                        <p><b>CATEGORY   :   </b><%=bookdetails.getCategory() %><br></p>
                                        <p><b>DESCRIPTION :</b><%=bookdetails.getDescription()%><br></p>
                                        <p><b>BOOK TITLE  :   </b><%=bookdetails.getBook_title()%><br></p>
                                        <p><b>BOOK CODE  :   </b><%=bookdetails.getBook_code() %><br></p>
                                        <p><b>PRICE :  </b><%=bookdetails.getPrice() %><br></p>
                                        <p><b>PUBLISH DATE   :   </b><%=bookdetails.getPublish_date()%><br></p>
                                        <p><b>CONDITION   :   </b><%=bookdetails.getCondition() %><br></p>
                                         
                                        <%
                     
                                         Rating rating = new Rating();
                                         rating.setBook_id(bookdetails.getBookid());
                                         rate = ratingdaoimpl.fetchrating(rating);
                                         
                                         %>
                                         
                                         <b>RATINGS    :</b><%=rate %><br><br>
                                         
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       <% count ++;
                       if(count==2){ %> 
                    	   </tr>
                    	   <tr>              
                     <%count=0; }}%>  
                       
                </tr>
            </tbody>
        </table>

	</form>
</body>
</html>