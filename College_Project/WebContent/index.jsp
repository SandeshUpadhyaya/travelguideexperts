<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Welcome</title>
  <link rel="stylesheet" href="style.css">
    <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
$(document).ready(function(){
var header = $('body');

var backgrounds = new Array(
    'url(images/taj.jpeg)'
  , 'url(images/red.jpg)'
  , 'url(images/india1.jpg)'
  , 'url(images/kar.jpg)'
);

var current = 0;

function nextBackground() {
    current++;
    current = current % backgrounds.length;
    header.css('background-image', backgrounds[current]);
}
setInterval(nextBackground, 5000);

header.css('background-image', backgrounds[0]);
});
</script>
</head>
<style>

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

<body >

  <div class="navbar" id="navigation">
    <img src="images/logo.png" alt="image not found">
  <ul class="nav navbar-nav navbar-right">
  <li><a href="user.jsp">USER</a></li>
  <li><a href="admin.jsp">ADMIN</a></li>
  </ul>


  </form>
</body>
</html>
