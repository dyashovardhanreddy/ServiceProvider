<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Add Job:Service Provider</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if(session.getAttribute("username")==null){
			response.sendRedirect("providerLogin.jsp");
		}
	%>
	<nav class="nav justify-content-end">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link" href="providerhome.jsp">Home</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="addjob.jsp">Add Job</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Profile</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Contact Us</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="providerlogout.jsp">Logout</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">${username }</a>
		  </li>
		</ul>
	</nav>
	<div class="container col-lg-5 mt-5" >
		<form action="addjob" method="post">
			<div class="mb-3">
			  <label for="formCategory" class="form-label">Job Category</label>
			  <select name="category" id="cars">
  				<option value="cardriving">cardriving</option>
  				<option value="load-lifting">load-lifting</option>
  				<option value="data-entry">data-entry</option>
  				<option value="cleaning">cleaning</option>
  				<option value="waiter">waiter</option>
				</select>
			</div>
			<div class="mb-3">
			  <label for="formSalary" class="form-label">Salary</label>
			  <input class="form-control" type="text" id="formSalary" placeholder="Rs:xxxxxx/day" name="salary">
			</div>
			<div class="mb-3">
			  <label for="formStartDate" class="form-label">Date Of Start</label>
			  <input class="form-control" type="date" id="formStartDate" name="startdate">
			</div>
			<div class="mb-3">
			  <label for="formFinishDate" class="form-label">Date Of Finish</label>
			  <input class="form-control" type="date" id="formFinishDate" name="enddate">
			</div>
			<div class="mb-3">
			  <label for="formImage" class="form-label">Image</label>
			  <input class="form-control" type="file" id="formImage" name="image">
			</div>
			<div class="form-row">
                    <div class="col-lg-5 pt-3">
                      <button class="btn1">Submit</button>
                    </div>
                </div>
		</form>
	</div>
</body>
</html>