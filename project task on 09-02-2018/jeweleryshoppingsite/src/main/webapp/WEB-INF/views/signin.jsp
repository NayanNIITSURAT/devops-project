<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  </head>
<body style="background-color: pink">
<jsp:include page="header.jsp"/>

 <div class="container">
  <h2>Sign In Form</h2>
  <form action="#">
 <div class="form-group">
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required></div>
<div class="form-group">
    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required></div>
<div class="form-group">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Login">
    </div>
    <div class="form-group">
      <input type="checkbox" checked="checked"> Remember me
      <a href="#"> Forgot password?</a>
    </label></div>
  </div>

</form>
    </body>
    <jsp:include page="footer.jsp"/>
    
    </html>