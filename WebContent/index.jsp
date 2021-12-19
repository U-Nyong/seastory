<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

</head>

<body id="page-top">

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
            <a class="nav-link js-scroll-trigger" href="Main.jsp">Product</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">New</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#projects">About us</a>
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
            <a class="nav-link js-scroll-trigger" href="#signup">Search</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Header -->
  <header class="masthead" id="head">
    <div class="container d-flex h-100 align-items-center">
      <div class="mx-auto text-center">
        <h1 class="text-white-50 mx-auto mt-2 mb-5">Welcome</h1>
        <h3 class="text-white-50 mx-auto mt-2 mb-5">We always want to provide fresh seafood to your table.</h3>
        <a href="fishList.fish" class="btn btn-primary js-scroll-trigger">Get Product</a>
      </div>
    </div>
  </header>

  <!-- About Section -->
  <section id="about" class="about-section text-center">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <h2 class="text-white mb-4">New Seafood</h2>
          <p class="text-white-50">이제부터 랍스타를 바다이야기에서 만나실 수 있습니다.<br>
            <a href="fishView.fish?id=14">바로주문하기</a></p>
        </div>
      </div>
      <img src="img/ster.jpg" class="img-fluid" alt="">
    </div>
  </section>

  <!-- Projects Section -->
  <section id="projects" class="projects-section bg-light">
    <div class="container">

      <!-- Featured Project Row -->
      <div class="row align-items-center no-gutters mb-4 mb-lg-5">
        <div class="col-xl-8 col-lg-7">
          <img class="img-fluid mb-3 mb-lg-0" src="img/seafood.jpg" alt="">
        </div>
        <div class="col-xl-4 col-lg-5">
          <div class="featured-text text-center text-lg-left">
            <h3>The Best Quality</h3>
            <p class="text-black-50 mb-0">'바다 이야기'는 언제나 최상의 품질을 제공하고자 노력합니다.</p>
          </div>
        </div>
      </div>

      <!-- Project One Row -->
      <div class="row justify-content-center no-gutters mb-5 mb-lg-0">
        <div class="col-lg-6">
          <img class="img-fluid" src="img/price.PNG" alt="">
        </div>
        <div class="col-lg-6">
          <div class="bg-black text-center h-100 project">
            <div class="d-flex h-100">
              <div class="project-text w-100 my-auto text-center text-lg-left">
                <h3 class="text-white">Reasonable Price</h3>
                <p class="mb-0 text-white-50">'바다 이야기'는 합리적인 가격으로 고객에게 다가갑니다.</p>
                <hr class="d-none d-lg-block mb-0 ml-0">
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Project Two Row -->
      <div class="row justify-content-center no-gutters">
        <div class="col-lg-6">
          <img class="img-fluid" src="img/gift.png" alt="">
        </div>
        <div class="col-lg-6 order-lg-first">
          <div class="bg-black text-center h-100 project">
            <div class="d-flex h-100">
              <div class="project-text w-100 my-auto text-center text-lg-right">
                <h3 class="text-white">Quick and accurate delivery</h3>
                <p class="mb-0 text-white-50">'바다 이야기'는 고객에게 신선한 해산물을 제공하기 위해 당일배송 합니다.</p>
                <hr class="d-none d-lg-block mb-0 mr-0">
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </section>

  <!-- Signup Section -->
  <section id="signup" class="signup-section">
    <div class="container">
      <div class="row">
        <div class="col-md-10 col-lg-8 mx-auto text-center">

          <i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
          <h2 class="text-white mb-5">Search for fresh products!</h2>

          <form class="form-inline d-flex" onsubmit="return doSomething();">
            <input type="text" class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0" id="inputProductName" name="name" placeholder="Enter product name...">
            <button type="submit" class="btn btn-primary mx-auto">SEARCH</button>
          </form>

        </div>
      </div>
    </div>
  </section>

  <!-- Contact Section -->
  <section class="contact-section bg-black">
    <div class="container">

      <div class="row">

        <div class="col-md-4 mb-3 mb-md-0">
          <div class="card py-4 h-100">
            <div class="card-body text-center">
              <i class="fas fa-map-marked-alt text-primary mb-2"></i>
              <h4 class="text-uppercase m-0">Address</h4>
              <hr class="my-4">
              <div class="small text-black-50">서울시 도산대로 16길</div>
            </div>
          </div>
        </div>

        <div class="col-md-4 mb-3 mb-md-0">
          <div class="card py-4 h-100">
            <div class="card-body text-center">
              <i class="fas fa-envelope text-primary mb-2"></i>
              <h4 class="text-uppercase m-0">Email</h4>
              <hr class="my-4">
              <div class="small text-black-50">
                <a href="#">seafood@fresh.com</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-md-4 mb-3 mb-md-0">
          <div class="card py-4 h-100">
            <div class="card-body text-center">
              <i class="fas fa-mobile-alt text-primary mb-2"></i>
              <h4 class="text-uppercase m-0">Service center</h4>
              <hr class="my-4">
              <div class="small text-black-50">+1 (555) 902-8832</div>
            </div>
          </div>
        </div>
      </div>

      <div class="social d-flex justify-content-center">
        <a href="#" class="mx-2">
          <i class="fab fa-twitter"></i>
        </a>
        <a href="#" class="mx-2">
          <i class="fab fa-facebook-f"></i>
        </a>
        <a href="#" class="mx-2">
          <i class="fab fa-github"></i>
        </a>
      </div>

    </div>
  </section>

<script>
function doSomething() {
    var kind = document.forms[0].elements['name'].value;
    var num;
    switch (kind) {
	case '방어회':
		num = 1;
		break;
	case '연어회':
		num = 2;
		break;
	case '참치':
		num = 3;
		break;
	case '광어회':
		num = 4;
		break;
	case '우럭회':
		num = 5;
		break;
	case '고등어':
		num = 6;
		break;
	case '밀치회':
		num = 7;
		break;
	case '한치':
		num = 8;
		break;
	case '눈다랑어':
		num = 9;
		break;
	case '참다랑어 뱃살':
		num = 10;
		break;
	case '홍어':
		num = 11;
		break;
	case '꽃게':
		num = 12;
		break;
	case '새우':
		num = 13;
		break;
	case '랍스타':
		num = 14;
		break;
	case '가자미회':
		num = 15;
		break;
	case '갈치':
		num = 16;
		break;
	case '키조개':
		num = 17;
		break;
	case '장어':
		num = 18;
		break;
	case '전복':
		num = 19;
		break;
	case '낙지':
		num = 20;
		break;
	default:
		break;
	}
    window.location = "fishView.fish?id=" +  parseInt(num);
    return false;
}
</script>

  <!-- Footer -->
  <footer class="bg-black small text-center text-white-50">
    <div class="container">
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/grayscale.min.js"></script>

</body>

</html>