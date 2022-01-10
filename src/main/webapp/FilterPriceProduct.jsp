<%@page import="java.sql.ResultSet"%>
<%@page import="com.onlinebookshop.model.Bookdetails"%>
<%@page import="com.onlinebookshop.daoimpl.BookdetailsDaoimpl"%>
<%@page import="com.onlinebookshop.model.Bookdetails"%>
<%@page import="com.onlinebookshop.model.ProductDetails"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Filter By Price</title>
<link rel="stylesheet" href="ShowProduct.css">
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
table td{
padding-bottom: 150px;
}
</style>
</head>
<body>
<div class="nav">
    <ul>
        <li><input type="text" class="text"></li>
        <li><button>search</button></li>
        <li><a href="ShowCart.jsp" class="set1">My Cart</a></li>
        <li><a href="MyProfile.jsp">User profile</a></li>
        <li><a href="RechargeWallet.jsp">Recharge Wallet</a><li>
        <li><a href="Ratings.jsp">Add Ratings</a></li>
        
    </ul>
</div>

<%
int price=(int)session.getAttribute("filteredbook");
BookdetailsDaoimpl bookdetaildao = new BookdetailsDaoimpl();
List<ProductDetails> showProduct= bookdetaildao.filterPrice(price);

%>
 
<table>
            <tbody>
                <tr>
                
                <%int count=0;
                for(ProductDetails bookdetails: showProduct){
                	%>
                    <td>
                        <table id="producttable">
                            <tbody>
                                <tr>
                                    <td><img src="image/<%=bookdetails.getBookimages()%>" width=50 height=300 alt="book"></td>    
                                    <td class="book">
                                        <span><b>Category: </b><%=bookdetails.getCategory() %> </span><br>
                                        <span><b>Description: </b><%=bookdetails.getDescription() %>  </span><br>
                                        <span><b>Book Title: </b><%=bookdetails.getBook_title()%> </span><br>
                                        <span><b>Book Code:</b><%=bookdetails.getBook_code() %> </span><br>
                                        <span><b>Price:</b><%=bookdetails.getPrice() %></span><br>
                                         <span><b>Publish Date:</b><%=bookdetails.getPublish_date()%></span><br>
                                         <span><b>Condition:</b><%=bookdetails.getCondition() %></span><br>
                                         <span><b>Author Name:</b><%=bookdetails.getName() %></span><br>
                                         <span><b>Author Email:</b><%=bookdetails.getEmail_id() %></span><br>
                                         <span><b>Ratings:</b><%=bookdetails.getRating() %></span><br>

                                         <span><a href = "addcartserv?bookid=<%=bookdetails.getBookid()%>"><button>Add to Cart</button></a></span>
                                       
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


</body>