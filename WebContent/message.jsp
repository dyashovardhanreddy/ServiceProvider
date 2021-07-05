<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  </head>
  <body>
    
    <center>
	<div class="toast mt-5" data-autohide="false">
    <div class="toast-header">
      <strong class="mr-auto text-primary">Message</strong>
      <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
    </div>
    <div class="toast-body">
    	<% 
      		out.println(session.getAttribute("message"));
    		session.removeAttribute("message");
    	%>
    </div>
  </div>
</div>
<a href="<%out.println(session.getAttribute("page"));%>">click here to get back to valid page</a>
</center>

<script>
$(document).ready(function(){
  $('.toast').toast('show');
});
</script>

</body>
</html>