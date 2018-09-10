<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.src.Model.*" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page import="com.src.Model.*" %>
    <%@ page import="java.util.*" %>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
		<title>City</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--Below 3 lines contains Bootstrap cdn -->
     	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     
	<!-- Below line is used to link external stylesheet to html page-->
 		 <link rel="stylesheet" href="stylesheet/styling.css">

<style>
#navigation
{
position:fixed;
top:0px;
width: 100%;
}
#outer_frame
{
position:absolute;
top:170px;
left:300px;
width:60%;
}
#inner_frame
{
background-color:white;
width:800px;
height:40%;
padding:40px;
border-radius:12px;
box-shadow:10px 10px 10px lightblue;
margiin-left: 100px;
margin-top: 30px;
}


#navigation img
{
  width: 20%;
  height: 20%;
}
#logo
{
    height:20%;
    width:20%;
}
body{
         background-image: url("images/hampi.jpg");
         background-repeat: no-repeat;
          background-position: right top;
          background-attachment: fixed;
          background-size: 100% 100%;

      }
      #nav
      {
      position:fixed;
      top:150px;
      left : 20px; 

      }
      
        div .nav
     {
    margin-top: 0px;
  }
    #san
    {
      width: 200px;
      height: 60px;
      border: none;
      font-size: 15px;
      background-color: #4CAF50;
      color: white;
    }
    #san:hover
    {
      background-color: #ccc;
      cursor: pointer;
    }
    .message
    {
    	font-size: 20px;
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
 
 #form2
 {
	 
 }

</style>


</head>
<div class="navbar" id="navigation">
    <img src="images/logo.png" alt="image not found"/>
</div>
  <!--End of navigation bar Code -->
<div class="nav1">
<ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="contact.jsp">Contact Us</a></li>
  <li><a href="userReviews.jsp">Add Review</a></li>
  <li><a href="userReviews.jsp">User Reviews</a></li>
  <li><a href="logoutcontroller">Logout</a></li>
</ul>
</div>

<div id="nav">
	<c:forEach items="${sessionScope.city }" var="a" >
	
		<form action="getPlaces" method="post">
		<input type="text" name="city" value="${a.city }" hidden />
		<input type="submit" id="san" value="${a.city }" />
	</form>
	
	</c:forEach>
</div>
<div id="outer_frame">
	<c:forEach items="${place }" var="a" >
		<div id="inner_frame">
		<form id="form1" action="getReviews.jsp">
		<center>
		<h2>${a.place }</h2>
			<img id="logo" src="${a.location}"></img>
			<br />
			<span>${a.desc }</span>
			<br/>
			<input type="text" name="place" value="${a.place }" hidden />
				<input type="submit" value="Click here to View review" />
			<br/>
			
			</form>
		</center>
		</form>
		</div>
		
	</c:forEach>
</div>
</body>
</html>