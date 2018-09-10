<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Welcome Admin</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
</head>
<style media="screen">
body{
  background-image: url('images/adminwelcome.jpg')
}
.one{
  font-size: 20px;
  text-align: center;
  padding-top: 15px;
}
  .city
  {
    position: absolute;
    left: 800px;
    top: 100px;
    background: grey;
    opacity: 0.7;
  }
  .places
  {
    position: absolute;
    left: 200px;
    top: 100px;
    background: grey;
    opacity: 0.7;
  }
  
  input
{
  background: transparent;
}

  input[type=text]
  {
    height: 40px;
    width: 200px;
    margin-left: 25px;
    margin-top: 15px;
    margin-right: 25px;
    border-radius: 10px;
  }
::placeholder
{
  color: white;
}

input[type=submit]
{
  margin-left: 100px;
  margin-top: 10px;
  height: 40px;
  margin-bottom: 15px;
  color: white;
  cursor: pointer;
  border-radius: 10px;
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
#city{
  margin-bottom: 15px;
}
textarea
{
  margin-left: 25px;
  margin-right: 50px;
  border-bottom: 10px;
  background: transparent;
}
</style>
<body>
<div class="navbar" id="navigation">
    <img src="images/logo.png" alt="image not found">
  <ul class="nav navbar-nav navbar-right">
  <li><a href="ContactRetrieve.jsp">USER QUERIES</a></li>
  <li><a href="index.jsp">LOGOUT</a></li>
  </ul>
<div class="city">
<p>${success}</p>
    <p class="one"> ENTER PLACE DETAILS</p>
  <form action="city" method="post">
  <input type="text" name="city" placeholder="Enter city" id="city" required>
    <p color:"lightblue">${error['city'] } </p>
    <input type="text" name="place" placeholder="Enter Placename" id="city" required>
    <p color:"lightblue">${error['place'] } </p>
    <br>
     <textarea name="desc" rows="4" cols="25" placeholder="Enter Description" required></textarea>
    <p color:"lightblue">${error['desc'] } </p>
    <br>
    <input type="text" name="location" placeholder="Enter location of image" required>
    <p color:"lightblue">${error['location'] } </p>
    <br>
    <input type="submit" name="submit" value="Submit">
  </form>
</div>
<br/>
<div class="places">
<p>${success1}</p>
    <p class="one"> ENTER CITY DETAILS</p>
  <form action="city1" method="post">
  <input type="text" name="city" placeholder="Enter city" id="city" required>
    <p color:"lightblue">${error['city'] } </p>
    <input type="submit" name="submit" value="Submit">
  </form>
</div>

</body>
</html>
