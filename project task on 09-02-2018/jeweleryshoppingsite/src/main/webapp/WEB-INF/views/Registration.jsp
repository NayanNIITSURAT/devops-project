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
<body style="background-color:#F0FFFF">
<jsp:include page="header.jsp"/>

<div class="container">
  <h2>Registration Form</h2>
  <form action="">
    <div class="form-group">
      <label for="Name">First Name:</label>
      <input type="text" class="form-control" id="text1" placeholder="Enter Name" name="name">
    </div>
    <div class="form-group">
      <label for="last_name">Last Name:</label>
      <input type="text" class="form-control" id="text2" placeholder="Enter last Name" name="pswd">
    </div>
    <div class="form-group">
      <label for="Contact No">Contact No:</label>
      <input type="text" class="form-control" id="text4" placeholder="Enter phone no." name="contact">
    </div>
    <div class="form-group">
      <label for="address">Address:</label>
      <textarea class="form-control" rows="3" id="addr"></textarea>
    </div>
     <div class="form-group">
      <label for="Email">Email:</label>
      <input type="email" class="form-control" id="text3" placeholder="Enter Email" name="email">
    </div>
    
    <div class="form-group">
      <label for="psw">Password:</label>
      <input type="password" class="form-control" id="text5" placeholder="Enter password." name="psw"/>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember" /> Remember me
      </label>
    </div>
    <div class="form-group">
    <input type="submit" class="btn btn-primary" value="Submit">
        </div>
    
 </form>
</div>
</body>
<jsp:include page="footer.jsp"/>
</html>
