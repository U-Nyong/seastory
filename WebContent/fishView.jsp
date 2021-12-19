<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>상세 정보</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/grayscale.min.css" rel="stylesheet">
  
</head>
<body>
<section id = "body">
	<section id="projects" class="projects-section bg-light">
	    <div class="container">
	
	      <!-- Featured Project Row -->
	      <div class="row align-items-center no-gutters mb-4 mb-lg-5">
	        <div class="col-xl-8 col-lg-7">
	          <img class="img-fluid mb-3 mb-lg-0" src="images/${fish.image}" width=500 height=500 alt="">
	        </div>
	        <div class="col-xl-4 col-lg-5">
	          <div class="featured-text text-center text-lg-left">
	            <h3>${fish.kind}</h3><br>
	            	<section id = ".login-form2">
						
						<b>가격 : </b> ${fish.price}<br>
						<b>원산지 : </b> ${fish.country}<br>
						<p id="desc">
						</p>
					</section>
					<div style="clear:both"></div><br><br>
	          </div>
	        </div>
	      </div>	
		<form>
			<section id = "btn">
				
				<a href="fishList.fish" class="btn btn-primary js-scroll-trigger" style = "margin-left: 400px" >쇼핑계속하기</a>
				<%
				if(session.getAttribute("id") == null) {
           		%>
				<a href="loginForm.jsp" onclick="alert('로그인을 해주세요')" class="btn btn-primary js-scroll-trigger" >장바구니에담기</a>
				<%
				}
				else {
				%>
				<a href="fishCartAdd.fish?id=${fish.id}" class="btn btn-primary js-scroll-trigger" >장바구니에담기</a>
				<%
				}
				%>
			</section>
		</form>
	  </div>
	</section>
</section>
</body>
</html>