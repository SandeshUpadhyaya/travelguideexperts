<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Retrieve Contacts</title>
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

</style>
<body>
  <div class="navbar" id="navigation">
    <img src="images/logo.png" alt="image not found">
  <ul class="nav navbar-nav navbar-right">
  <li><a href="logoutcontroller">LOGOUT</a></li>
  </ul>
</div>
<ul>

<%       
 Connection con=null;
ResultSet resultSet=null;
Statement statement=null;
	 try {
		Class.forName("org.h2.Driver");
		con=DriverManager.getConnection("jdbc:h2:~/test","sa", "");
		statement=con.createStatement();
		 resultSet=statement.executeQuery("select * from contact");
		 while(resultSet.next()){	
%>
<li>
<div class="one">
  <b><center> Name : <%=resultSet.getString("name") %></center></b>
  <b><center>Email: <%=resultSet.getString("email") %></center></b>
  <center><b>Message</b>: <%=resultSet.getString("message") %></center>
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