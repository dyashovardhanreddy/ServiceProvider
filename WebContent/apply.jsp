<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
	<meta charset="utf-8">
	<title>Apply Job</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="./css/jobs.css">
</head>
<body>
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if(session.getAttribute("username")==null){
			response.sendRedirect("seekerLogin.jsp");
		}
	%>
	<nav class="nav justify-content-end">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link" href="home.jsp">Home</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Profile</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Contact Us</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="seekerlogout.jsp">Logout</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">${username }</a>
		  </li>
		</ul>
	</nav>
	<div class = 'container'>
		<center class="my-5"><header style="font-size: 40px;font-style: italic;">Apply for Jobs Here</header></center>
      	<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@DESKTOP-TSNRJGE:1521:xe" user="yasho" password="password"></sql:setDataSource>
		<sql:query dataSource="${db}" var="rs"> select * from job</sql:query>
    		<div class = 'row'>
    		<c:forEach items="${rs.rows }" var="row">
    			
          			<div class = 'col-md-4 col-lg-4 my-5'>
    					<div class="card" style="width: 18rem;display:inline-bloack">
  							<img class="card-img-top" src="./media/${row.image }" alt="Card image cap">
  							<div class="card-body">
    							<h5 class="card-title">${row.category }</h5>
    							<p class="card-text">Salary : ${row.salary }</p>
    							<p class="card-text"><i class="far fa-calendar-minus"></i> Salary : ${row.startdate }</p>
    							<p class="card-text"><i class="far fa-calendar-minus"></i> Salary : ${row.enddate }</p>
    							<a href="#" class="btn btn-primary">Apply</a>
  							</div>
						</div>
					</div>
    		</c:forEach>.
    		</div>
    	
    </div>
    <script src="https://kit.fontawesome.com/b15f1b8144.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</body>
</html>