<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
function validate(){
  var pass=document.getElementById('pssw');
  var cpass=document.getElementById('cpassw');
  if(pass.value!=cpass.value)
  {
    alert("Password and confirm password must be the same");
  }
  }
</script>
<style>
* {
    box-sizing: border-box;
}

body {
    margin: 0;
}

/* Create two equal columns that floats next to each other */
.column {
    float: left;
    width: 50%;
    padding: 10px;
    height: 300px; /* Should be removed. Only for demonstration */
}


form{
  display: inline-block;
  text-align: center;
}

fieldset {
  margin: 20px;
  padding: 0 10px 10px;
  border: 1px solid #666;
  border-radius: 8px;
  box-shadow: 0 0 10px #666;
  padding-top: 10px;
  background-color: #607D8B;
}


input[type=email], input[type=password], input[type=text] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    border-radius: 4px;
}



.button
{
  background-color: #03A9F4;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 12px;
}
#img{
  width: 30%;
  height: 30%;
}


</style>
</head>
<body background="images/beach.jpg">
<center><img src="images/logo.png" alt="Image Not Found" id="img"></center>
<div class="row">
  <div class="column">
    <div align="center" class="login">
      <div class="form">
    <form class="login" method="post" action="login">
    <h2>${fail1}</h2>
      <fieldset>
      <h2><center>LOGIN HERE</center></h2>
      <table>
        <tr><center>
          <td><input type="email" name="email" placeholder="Username" align="center" size="50" required></td>
        </center></tr>

    <tr>
     <td><input type="password" name="psw" placeholder="Password" id="password" size="50" required></td>
    </tr>
    <tr>
      <td><input type="submit" class="button" value="Login" align="center"></td>
    </tr>
    </table>
  <br/>
  </form>



    </form>
    </div>
  </div>
  </div>
  <div class="column">
    <div class="register">
    <form class="register" action="UserRegister" method="post">
    <h2>${fail}</h2>
    <h2>${success}</h2> 
      <fieldset>
        <h2><center>SIGN UP</center></h2>
    <table>
      <tr><center>
        <td><input type="email" name="uname" placeholder="Username" align="center" size="50" required></td>
        <td><p color:"lightblue">${error['email'] } </p></td>
      </center></tr>

    <tr>
    <td><input type="password" name="pswd" placeholder="Password" size="50" id="pssw" required></td>
    <td><p color:"lightblue">${error['passw'] } </p></td>
    </tr>
    <tr>
      <td><input type="password" name="cpass" placeholder="Confirm Password" size="50" id="cpassw" required></td>
      <td><p color:"lightblue">${error['cpassw'] } </p></td>
    </tr>
    <tr>
      <label for="age">
        <td><input type="text" name="age" placeholder="Age" value="${age }" required></td>
        <td><p color:"lightblue"> ${error['age'] }</p></td>
      </label>
    </tr>
    <tr>
      <label for="sex">
        <td><input type="text" name="sex"  placeholder="Sex" required></td>
        <td><p color:"lightblue">${error['sex'] } </p></td>
      </label>
    </tr>

    <tr>
    <td><input type="submit" class="button" value="Sign Up" align="center" onclick="validate()"></td>
    </tr>

    </table>
    </fieldset>
  </form>
  </div>
  </div>
</div>

</body>
</html>
