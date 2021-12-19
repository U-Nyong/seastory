<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SeaStory</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/grayscale.min.css" rel="stylesheet">
  <link rel="stylesheet" href="./css/Style.css" type="text/css">
  
<title>Sign Up</title>
</head>
<body>

<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top navbar-shrink" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="index.jsp"><h3>SeaStory</h3></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="Main.jsp">Product</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="index.jsp#about">New</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="index.jsp#projects">About us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="loginForm.jsp">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger active" href="#">Sign Up</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="index.jsp#signup">Search</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

	<div class = "container">
		<div class = "col-lg-4" style = "margin-left: 300px;">
		 <div class = "jumbotron" style = "padding-top : 30px; margin-top : 250px;">
		
			<form action = "./memberJoinAction.me" method = "post">
			
				<h3 style = "text-align : center;">Sign Up</h3>
				
				<div class = "form-group">
					<input type = "text" class = "form-control" placeholder = "id" name = "id" maxlength = "20">
				</div>
				
				<div class = "form-group">
					<input type = "password" class = "form-control" placeholder = "password" name = "passwd" maxlength = "20">
				</div>
				
				<div class = "form-group">
					<input type = "text" class = "form-control" placeholder = "name" name = "name" maxlength = "20">
				</div>
				
				<div class = "form-group">
					<input type = "text" class = "form-control" placeholder = "address" name = "addr" maxlength = "20">
				</div>
				
				<div class = "form-group">
					<input type = "text" class = "form-control" placeholder = "your phone number" name = "pn" maxlength = "20">
				</div>
				
			<input type = "submit" class = "btn btn-primary form-control" style = "background-color : #64a19d" href="index.html" value = "회원가입">
			
			</form>
	 </div>
	</div>
</div>
	
	
	<script src = "https://code.jquery.com/jquert-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>	
</body>
</html>