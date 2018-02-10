<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Admin Adding</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <style>
  body {
  padding : 10px ;
  
}

#exTab1 .tab-content {
  color : white;
  background-color: #428bca;
  padding : 5px 15px;
}

#exTab2 h3 {
  color : white;
  background-color: #428bca;
  padding : 5px 15px;
}

/* remove border radius for the tab */

#exTab1 .nav-pills > li > a {
  border-radius: 0;
}

/* change border radius for the tab , apply corners on top*/

#exTab3 .nav-pills > li > a {
  border-radius: 4px 4px 0 0 ;
}

#exTab3 .tab-content {
  color : white;
  background-color: #428bca;
  padding : 5px 15px;
}
button {
  background-color: #4CAF50;
  color: white;
  padding: 10px 14px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width:20%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 10px 14px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 10%;
}
div
{
font-size:medium;
}
  </style>
</head>
<body style="background-color:pink">
<jsp:include page="header.jsp"/>

<div class="container"><h1>Welcome Admin</h1></div>
<div id="exTab1" class="container">	
<ul  class="nav nav-pills">
			<li class="active">
      
			<li><a href="#3a" data-toggle="tab">Supplier</a>
			</li>
			<li><a href="#2a" data-toggle="tab">Category</a>
			</li>
  		<li><a href="#1a" data-toggle="tab">Product</a>
			</li>
			
		</ul>

			<div class="tab-content clearfix">
			  <div class="tab-pane active" id="3a">
        <div class="container">
  <h2>Supplier Form</h2>
  <form action=" ">
  <div class= "col-xs-4" class="form-group">
    <label for="sid">Supplier Id:</label>
    <input type="sid" class="form-control" id="sid" placeholder="Enter Supplier Id" name="sppid">
  </div><br><br><br>
  
  
  <div  class= "col-xs-4" class="form-group">
    <label for="sname">Supplier Name:</label>
    <input type="text" class="form-control" id="sname" placeholder="Enter Supplier Name" name="sppname">
  </div><br><br><br><br>
  <div class= "col-xs-4" >
  <button type="submit" class="btn btn-primary">Submit</button>
  <button type="button" class="btn btn-danger">Cancel</button>
  </div>
</form>
</div></div>
				
<div class="tab-pane" id="2a">
  <div class="container">
  <h2>Category Form</h2>
  <c:url var="addCategory" value="/saveCat" ></c:url>                
  <form class="signup" action="saveCat" method="post">
  <div class= "col-xs-4" class="form-group">
    <label for="cid">Category Id:</label>
    <input type="text" class="form-control" id="cid" placeholder="Enter Category Id " name="cid">
  </div><br><br><br>
  <div  class= "col-xs-4" class="form-group">
    <label for="cname">Category Name:</label>
    <input type="text" class="form-control" id="cname" placeholder="Enter Category Name" name="cname">
  </div><br><br><br><br>
  <div class= "col-xs-4" >
  <button type="submit" class="btn btn-primary">Submit</button>
  <button type="button" class="btn btn-danger">Cancel</button>
  </div>
</form>
</div></div>
        <div class="tab-pane" id="1a">
          <div class="container">
  <h2>Product Form</h2>
   <form class="form-horizontal" action="">
    <div class="form-group">
      <label class="control-label col-sm-2" for="pname">Product Name:</label>
      <div class="col-sm-5">
        <input type="text" class="form-control" id="pname" placeholder="Enter Product Name" name="proname">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pprice">Price:</label>
      <div class="col-sm-5">          
        <input type="text" class="form-control" id="pprice" placeholder="Enter Product Price" name="proprice">
      </div>
      </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="pdes">Product Description:</label>
      <div class="col-sm-5">          
        <input type="text" class="form-control" id="pdes" placeholder="Enter Product Description" name="prodes">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pstock">Stock:</label>
      <div class="col-sm-5">          
        <input type="text" class="form-control" id="pstock" placeholder="Enter Product Stock" name="prostk">
      </div>
      </div>
    
   <div class="form-group" >
  <table>
  <tr>
   <td>Select Supplier:</td>
  <td> <select class="form-control"  id="sel1">
       <option>Supplier------------------------------------------------------------------------------</option>
        <option>nayan</option>
        <option>raj</option>
        <option>kiran</option>
        <option>jaydeep</option>
      </select>
   </td>
   </tr>
   </table> 
   </div>
  
   
  <div class="form-group" >
  <table>
  <tr>
   <td>Select Category:</td>
  <td> <select class="form-control"  id="cat1">
       <option>Category------------------------------------------------------------------------------</option>
        <option>ring</option>
        <option>nackless</option>
        <option>ring </option>
        <option>earing</option>
      </select>
   </td>
   </tr>
   </table> 
   </div>
  <div class= "col-xs-4" >
  <button type="submit" class="btn btn-primary">Submit</button>
  <button type="button" class="btn btn-danger">Cancel</button>
  </div>
  </form>
      </div>
    </div>
 
  </div>
  </div> 
  <jsp:include page="footer.jsp"/>
</body>
</html>