<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Contact Form</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
  <style media="screen">
    body
    {
      background: url('images/contact.jpg');
      text-align: center;
    }
    h2
    {
      color: red;
      font-size: 45px;
    }
    form
    {
      margin-top: 50px;
      transition: all 4s ease-in-out;
    }
    input[type=text]
    {
      width: 600px;
      background: transparent;
      border: none;
      outline: none;
      border-bottom: 1px solid gray;
      color: #fff;
      font-size: 18px;
      margin-bottom: 16px;

    }
    input,textarea{
      width: 600px;
      background: transparent;
      border: none;
      outline: none;
      border-bottom: 1px solid gray;
      color: #fff;
      font-size: 18px;
      margin-bottom: 16px;
    }
    input
    {
      height: 45px;
    }
     input[type=submit]
    {
      background-color: transparent;
      background: #ff5722;
      color: #fff;
      font-size: 20px;
      font-weight: bold;
      letter-spacing: 2px;
      border-radius: 12px;
    }
    input[type=submit]:hover
    {

      background-color: #f44336;
      cursor: pointer;
    }
    ::placeholder
    {
      color: white;
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
  float: left;
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
</head>
<body>
<div class="navbar" id="navigation">
    <img src="images/logo.png" alt="image not found"/>
</div>
<div class="nav1">
<ul>
  <li><a href="city.jsp">Home</a></li>
  <li><a class="active" href="#contact">Contact Us</a></li>
  <li><a href="userReviews.jsp">Add Review</a></li>
  <li><a href="userReviews.jsp">User Reviews</a></li>
  <li><a href="logoutcontroller">Logout</a></li>
</ul>
</div>
  <h2><center>Contact Us</center></h2>
  <h3><center>${success}</center></h3>
  <div class="contact">
  <form action="contact" method="post">
    <input type="text" name="name" placeholder="Enter name....." required/>
    <br>
    <input type="email" name="email" placeholder="Enter email...." required/>
    <br>
    <textarea name="message" rows="8" cols="80" placeholder="Enter the message" required/></textarea>
    <br>
    <input type="submit" class="submit" value="submit">
    </form>
  </div>
</body>
</html>
