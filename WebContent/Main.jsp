<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="kr">

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
  
<style type="text/css">
	.fish {
		padding-top: 180px;
		padding-left: 80px;
		padding-right: 80px;
	}
</style>

</head>

<body class="ptop">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="index.jsp"><h3>SeaStory</h3></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger active" href="#">Product</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="index.jsp#about">New</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="index.jsp#projects">About us</a>
          </li>
          <%	// 세션 가져오기
			String name = session.getAttribute("id") + "";
        // 로그인 전 
        if(session.getAttribute("id") == null) {
            %>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="loginForm.jsp">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="joinForm.jsp">Sign Up</a>
          </li>
            <%
        } 
        // 로그인 후 
        else {
            %>
          <li class="nav-item">
          	<a class="nav-link js-scroll-trigger" href="fishCartList.jsp">Cart</a>
          </li>
		  <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="logout.jsp"><%=name%>님 &nbsp;Logout</a>
          </li>
            <%
        }
    %>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="index.jsp#signup">Search</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Header -->
  <header class="masthead">
   <div class="fish">
      <c:choose>
		<c:when test="${fishList == null}">
			<jsp:forward page="fishList.fish"></jsp:forward>
		</c:when>
		<c:otherwise>
		<h2 class="n">goods for sale</h2> <hr>

			<c:forEach var="fish" items="${fishList}" varStatus="status">
				<div class= "box">
						<div class = "image-box">
					<a href="fishView.fish?id=${fish.id}" >
					<img src="images/${fish.image}" id="productImage" />
					</a>
						<div class = "box-underimage">
					${fish.kind} &nbsp; ${fish.price}<br><br><br>
					</div>
					</div>
					</div>
				
				<c:if test="${((status.index+1) mod 4)==0 }">
	
				</c:if>
			</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
  </header>
</body>

</html>