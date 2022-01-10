<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Author</title>
<style>
body{
  background-image: url(image/book.jpg);
    background-repeat: no-repeat;
    background-size: 1350px 800px; 
    color: white;
}
.nav{
	background-color: black;
	color: white;
}
*{
			margin:0;
			padding:0;
		}
        li{
            list-style:none;
            padding: 30px 17px;
        }
        li a{
            text-decoration: none;
            color:white;
        }
        aside{
        	float:left;
        	margin-right: 380px;
        }
        h1{
        	border:1px solid white;
        	padding-top:220px;
        	padding-bottom: 20px;
        }
        h1{
        	border : 1px solid;
        	border-color: transparent;
        	padding: 280px 90px;
        }
        ul{
        	background-color:black;
        }
        h2{
        	text-aling:center;
        	color: white;
        	padding-top: 20px 10px;
        	
        }
        fieldset{
            position: absolute;
            top: 120px;
            
            right: 40%;
            padding-right: 30px;
            padding-left: 30px;
            padding-top: 20px;
            padding-bottom:20px;
            
        }
        <h2>Books Wagon</h2>
        #allusers table,th,tr,td{
        border: 1px solid black;
        border-collapse: collapse;
        padding: 10px;
        }
</style>
</head>
<body>
<aside>
<ul>
        <li><a href="ViewUser.jsp">View User</a></li>
		<li><a href="DeleteUser.jsp">Delete User</a></li>
		
        <li><a href="AddBooks.jsp">Add Books</a></li>
		<li><a href="UpdateBook.jsp">Update Book</a></li>
		<li><a href="ViewAllBook.jsp">All Books</a></li>
		
		<li><a href="AddAuthor.jsp">Add Author</a></li>
		<li><a href="AuthorUpdate.jsp">Update Author</a></li>
		<li><a href="ViewAuthor.jsp">View Author</a></li>
		
		<li><a href="ViewAllOrders.jsp">View ALL Orders</a></li>

</ul>
</aside>
 <h2>Books Wagon</h2>
</head>
<body>
<form action="AddAuthor" method="post">
<fieldset>
<label for="name">Name :</label><br>
<input type="text" name="authorname" class="author" required><br><br>
<label for="email">Email_Id :</label><br>
<input type="text" name="email" class="author" required><br><br>
<label for="booktitle">Book Name :</label><br>
<input type="text" name="bookname" class="author" required><br><br>
<button type ="submit">Add</button>
</fieldset>
<%!
		String flag1;
	%>
	<%
		if(session.getAttribute("addauthor") != null){
		flag1 = session.getAttribute("addauthor").toString();
	%>
		<h4><%=flag1%></h4>
	<% }%>
 
	<%session.removeAttribute("addauthor");
    %>


</form>
</body>
</html>