<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Retrieve Reviews</title>
  <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
    <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

</head>
<style media="screen">
body{
  background-image: url("images/contactretrive.jpg");
  background-repeat: no-repeat;
    background-position: right top;
    background-attachment: fixed;
    background-size: 100% 100%;

}
.one
{
  background-color: white;
  margin: 40px;
 border-radius: 14px;
 padding: 16px;
}
b
{
  font-size: 25px;
}
.one p{
  padding-left: 250px;
}
#navigation li a {
  font-size: 1.7rem;
  color: #FFC107;
  text-align: center;
  background-color: grey;
  opacity: 0.4;
  filter: alpha(opacity=70);
}

#navigation li a:hover
{
  font-size: 1.7rem;
  background-color: black;
   border-bottom: solid;
  border-bottom-color: white;
  opacity: 0.4;
  filter: alpha(opacity=70);
}

#navigation img
{
  width: 20%;
  height: 20%;
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
  
</style>
<body>
  <body>
<div class="navbar" id="navigation">
    <img src="images/logo.png" alt="image not found"/>
</div>
<div class="nav1">
<ul class="navbar">
  <li class="navigation"><a href="city.jsp">Home</a></li>
  <li class="navigation"><a  href="#contact">Contact Us</a></li>
  <li class="navigation"><a href="userReviews.jsp">Add Review</a></li>
  <li class="navigation"><a class="active" href="#userReviews">User Reviews</a></li>
  <li class="navigation"><a href="logoutcontroller">Logout</a></li>
</ul>
<ul>

<%       
 Connection con=null;
ResultSet resultSet=null;
PreparedStatement statement=null;
String place=request.getParameter("place");
	 try {
		Class.forName("org.h2.Driver");
		con=DriverManager.getConnection("jdbc:h2:~/test","sa", "");
		statement=con.prepareStatement("select * from review where place=?");
		statement.setString(1, place);
		 resultSet=statement.executeQuery();
		 while(resultSet.next()){	
%>
<li>
<div class="one">
  <b><center> Name : <%=resultSet.getString("name") %></center></b>
  <b><center>Place: <%=resultSet.getString("place") %></center></b>
  <center><b>Review</b>: <%=resultSet.getString("review") %></center>
</div>
</li>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>
</ul>