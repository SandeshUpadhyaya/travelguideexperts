<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login Admin</title>
</head>
<style media="screen">

body{
  background-image: url("images/admin.jpeg");
  background-repeat: no-repeat;
    background-position: right top;
    background-attachment: fixed;
}
#img{
  width: 30%;
  height: 30%;
}

.box{
  position: absolute;
  top: 60%;
  left: 50%;
  transform: translate(-50%,-50%);
  width: 400px;
  height: 470px;
  padding: 40px 40px;
  box-sizing: border-box;
  background: rgba(0,0,0,0.5);
}


input{
  width: 100%;
  margin-bottom: 20px;
  color: white;
}

input[type="email"], input[type="password"]
{
  border: none;
  border-bottom: 1px solid red;
  background: transparent;
  outline: none;
  height: 40px;
}
input[type="submit"]
{
  border: none;
  outline: none;
  height: 40px;
  color: #fff;
  cursor: pointer;
  background: #ff267e;
  border-radius: 20px;

}
h2{
  color: white;
}

input[type="submit"]:hover
{
  background: #efed40;
  color: #262626;
}

::placeholder{
  color: white;
  opacity: 1;
}

#user{
  width: 40%;
  height: 40%;
}
</style>
<body >

    <center><img src="images/logo.png" alt="Image Not Found" id="img"></center>
    <h2>${fail }</h2>
  <div class="box">
  <h2><center>ADMIN LOGIN ONLY</center></h2>
  <form action="AdminLogin" method="post">
    <center><img src="images/user.png" alt="Image not found" id="user"></center>
      <input type="email" name="user" placeholder="Username" size="50" required><br>
      <input type="password" name="psswd" placeholder="Password" size="50" required>
      <input type="submit" name="" value="Sign In">
  </form>
  </div>
</body>
</html>
