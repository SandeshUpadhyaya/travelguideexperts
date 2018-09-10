<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Add user review</title>
  <style media="screen">
    select
    {
      width: 200px;
      height: 50px;
      margin: 20px;
    }
    option
    {
		 width: 200px;
      	height: 50px; 
      	padding: 20px;   
    }
    textarea
    {
      border-top: none;
      border-left: none;
      background: rgba(0,0,0,0.7);
      color: #fff;
    }
    ::placeholder
    {
      color: white;
      opacity: 1;
    }
    body{
        background-image: url("images/background.jpg");
        background-repeat: no-repeat;
         background-position: right top;
         background-attachment: fixed;
         background-size: 100% 100%;

     }
     input[type="text"]
     {
     	width: 200px;
     	height: 50px;
     	box-radius: 12px;
     	margin-bottom: 20px;
     }
     ul {
    list-style-type: none;
    margin: 100px;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

a:hover:not(.active) {
    background-color: #111;
}

.active {
background-color:#4CAF50;
}
     #navigation img
{
  width: 20%;
  height: 20%;
}
input[type="submit"] {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 10px 10px;
    cursor: pointer;
    box-radius: 12px;
}
  </style>
</head>
<body>
<div class="navbar" id="navigation">
    <img src="images/logo.png" alt="image not found"/>
</div>
  <!--End of navigation bar Code -->
<div class="nav1">
<ul>
  <li><a  href="city.jsp">Home</a></li>
  <li><a href="contact.jsp">Contact Us</a></li>
  <li><a class="active" href="userReviews.jsp">Add Review</a></li>
  <li><a href="getReviews.jsp">User Reviews</a></li>
  <li><a href="logoutcontroller">Logout</a></li>
</ul>
</div>

  <form class="" action="review" method="post">
  <center>
  <h2>${success }</h2>
  <h2>${fail }</h2>
  <input type="text" placeholder="Enter your name" name="uname" required />
<br>
<%       
Connection con=null;
ResultSet resultSet=null;
Statement statement=null;
	 try {
		Class.forName("org.h2.Driver");
		con=DriverManager.getConnection("jdbc:h2:~/test","sa", "");
		statement=con.createStatement();
		 resultSet=statement.executeQuery("select * from place");
%>
<select name="place" value="">
<% 
		 while(resultSet.next()){	
%>
<option value="<%String item= resultSet.getString("place"); out.println(item); %>"><%out.println(item); %></option>
<% }%>
</select>
<%
} catch (Exception e) {
e.printStackTrace();
}
%>
<br>
<input type="text" placeholder="Please type the place again" name="places" required/>

<br>

<textarea name="review" rows="8" cols="80" placeholder="Add a review....." required></textarea>
<br>
<input type="Submit" value="submit">
</center>
</form>
</body>
</html>
