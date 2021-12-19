<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>장바구니</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/grayscale.min.css" rel="stylesheet">
  
<script>
	function checkAll(theForm){
		
		//console.log("theForm.remove.length: "+theForm.remove.length);
		//console.log("theForm.remove.checked: "+theForm.remove.checked);
		
		if(theForm.remove.length == undefined){
			theForm.remove.checked = theForm.allCheck.checked;
		}else{
			for(var i=0;i<theForm.remove.length;i++){
				theForm.remove[i].checked = theForm.allCheck.checked;
			}
		}
	}
	
	function checkQty(kind,qty){
		if(qty != 1){
			location.href="fishCartQtyDown.fish?kind="+ encodeURIComponent(kind);
		}
	}
</script>
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
          <%	// 세션 가져오기
			String name = session.getAttribute("id") + "";
            %>
          <li class="nav-item">
          	<a class="nav-link js-scroll-trigger active" href="#">Cart</a>
          </li>
		  <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="logout.jsp"><%=name%>님 &nbsp;Logout</a>
          </li>
    	  <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="index.jsp#signup">Search</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

<section id="listForm">
<c:choose>
	<c:when test="${cartList!=null && cartList.size()>0 }">
  <h2>장바구니 목록</h2>
	<form method="post" action="fishCartRemove.fish">
      <table>
        <tr class = "tr_top">
        	<td><input type="checkbox" id="allCheck" name="allCheck" onclick="checkAll(this.form)"/> </td>
          <td>번호</td>
          <td>상품 이미지</td>
          <td>상품명</td>
          <td>가격</td>
          <td>수량</td>
         </tr>

        <c:forEach var="cart" items="${cartList}" varStatus="status">
        
        <tr>
        	<td>
        		<input type="checkbox" id="remove" name="remove" value="${cart.kind}"/>
        	</td>
          <td>
             ${status.index+1}
          </td>
          <td>
             <img src = "images/${cart.image}" id ="cartImage" width=150 height=150/>
          </td>
          <td>
             ${cart.kind }
          </td>
          <td>
             ${cart.price }
          </td>
          <td>
            <a href="fishCartQtyUp.fish?kind=${cart.encodingKind}">
             <img src="images/up.PNG" id="upImage" border=0 width = 15/>
            </a><br>
            ${cart.qty }<br>
            <a href="javascript:checkQty('${cart.kind}',${cart.qty})">
             <img src="images/down.PNG" id="downImage" border=0 width = 15/>
            </a>
          </td>
         </tr>
        </c:forEach>
      <tr>
         <td colspan="5" style="text-align:center;">
          	  총 금액 : ${totalMoney}원
         </td>
      </tr>
      <tr>
         <td colspan="5" style="text-align:center;">
         	<input type="submit" value="삭제" />
         </td>
      </tr>
      </table>
      <nav id="commandList">
   			<a href="fishList.fish" class="btn btn-primary js-scroll-trigger" style = "margin-left: 800px">쇼핑 계속하기</a>  
   	  </nav>
  </form>
  	</c:when>
	<c:otherwise>
	  <form method="post" action="fishCartList.fish">	
      <section class="div_empty">
      	<div class="col-xl-8 col-lg-7">
	          <br><img class="img-fluid mb-3 mb-lg-0" src="img/shoppingbasket.png" width=150 height=150 style = "margin : 200px" alt=""><br><br><br>
	    </div>
      	<h4 style = "margin-left : 200px">장바구니가 비어 있습니다.</h4><br><br>
      	<nav id="commandList">
   			<a href="fishList.fish" class="btn btn-primary js-scroll-trigger" style = "margin-left: 800px">쇼핑 계속하기</a>  
   		</nav>
      </section>
      </form>
      </c:otherwise>
     </c:choose>
</section>
</body>
</html> 