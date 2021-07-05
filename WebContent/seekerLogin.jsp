<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/login_style.css">
    <title>Job Seeker Login : Service Provider</title>
 </head>
<body>
    <header class="header-section">
      <nav class="navbar navbar-expand-md navbar-light bg-light fixed-top mb-5">
          <div class="container">
            <a class="navbar-brand mr-4" href="index.html">Website</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggle" aria-controls="navbarToggle" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarToggle">
              <div class="navbar-nav mr-auto">
              </div>
              <!-- Navbar Right Side -->
              <div class="navbar-nav">
                  <a class="nav-item nav-link" href="seekerLogin.jsp">Sign In</a>
                  <a class="nav-item nav-link" href="register.jsp">Sign Up</a>
              </div>
            </div>
          </div>
      </nav>
    </header>
    <br>
    <br>
    <section class="Form mt-5">
      <div class="container">
        <div class="row no-gutters">
          <div class="col-lg-5">
            <img src="./media/Login.jpg" class="img-fluid" alt="">
          </div>  
          <div class="col-lg-7 px-5 pt-5 pb-2">
            <h1 class="font-weight-bold py-3">LogIn</h1>
            <h4>Job Seeker</h4>
            <form action="seekerLogin" method="post">
                <div class="form-row">
                  <div class="col-lg-5">
                    <input type="text" class="form-control my-3 p-1" placeholder="username" name="username">
                  </div>
                </div>
                <div class="form-row">
                    <div class="col-lg-5">
                      <input type="password" class="form-control my-3 p-1" placeholder="******" name="password">
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-lg-5">
                      <button class="btn1">Login</button>
                    </div>
                </div>
            </form>
            <p class="mt-3">
              Don't Have Account?<a href="register.jsp">Register Here</a>
            </p>
            <p class="mt-1">
            	For Login as Job Provider <a href="providerLogin.jsp">click here</a>
            </p>
          </div>           
          </div>
        </div>
      </div> 
    </section>
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body> 
</html>