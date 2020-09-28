<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script>
  function formCheck() {
		var useridDoc = document.getElementById("userid");
		var userpwdDoc = document.getElementById("userpwd");
		var userpwd2Doc = document.getElementById("userpwd2");
		var usermailDoc = document.getElementById("usermail");

		//아이디 유효성
		if(useridDoc.value == "") {
			alert("아이디를 입력해주세요.");
			return false;
		}
		if(useridDoc.value.length < 3 || acc_idDoc.value.length > 12) {
			alert("아이디는 3~12글자로 입력해 주세요.");
			return false;
		}
		
		//비밀번호 유효성
		if(userpwdDoc.value == "") {
			alert("비밀번호를 입력해주세요.");
			return false;
		}
		if(userpwdDoc.value.length < 3 || acc_pwDoc.value.length > 10) {
			alert("비밀번호는 5~10글자로 입력해주세요.");
			return false;
		}
		if(userpwdDoc.value != userpwd2Doc.value) {
			alert("동일한 비밀번호를 입력해주세요.");
			return false;
		}

		//이메일 유효성
		if(usermailDoc.value == "") {
			alert("이메일을 입력해주세요.");
			return false;
		}
		
	}
  </script>
<title>헤르메스 - 일본 여행의 길잡이</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alex+Brush"
	rel="stylesheet">

<link rel="stylesheet"
	href="<c:url value='/resources/css/open-iconic-bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/animate.css'/>">

<link rel="stylesheet"
	href="<c:url value='/resources/css/owl.carousel.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/owl.theme.default.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/magnific-popup.css'/>">

<link rel="stylesheet" href="<c:url value='/resources/css/aos.css'/>">

<link rel="stylesheet"
	href="<c:url value='/resources/css/ionicons.min.css'/>">

<link rel="stylesheet"
	href="<c:url value='/resources/css/bootstrap-datepicker.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/jquery.timepicker.css'/>">


<link rel="stylesheet"
	href="<c:url value='/resources/css/flaticon.css'/>">
<link rel="stylesheet"
	href="<c:url value='/resources/css/icomoon.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">


<link rel="stylesheet"
	href="<c:url value='/resources/fonts/material-icon/css/material-design-iconic-font.min.css'/>">
</head>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="/hermes">Hermes</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> 메뉴
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
		  <li class="nav-item">			<a href="<c:url value='/'/>" 				class="nav-link">메인 화면</a></li>
          <li class="nav-item">			<a href="<c:url value='/about'/>"  			class="nav-link">이용 방법</a></li>
          <li class="nav-item">			<a href="<c:url value='/tour'/>" 		 	class="nav-link">여행 정보</a></li>
          <li class="nav-item">			<a href="<c:url value='/map/mapmain'/>"		class="nav-link">지도 정보</a></li>
          <li class="nav-item">			<a href="<c:url value='/board/boardmain'/>"	class="nav-link">게시판</a></li>
					<c:choose>
						<c:when test="${sessionScope.userid != null}">
							<li class="nav-item active"><a
								href="<c:url value='/member/logout'/>" class="nav-link"><span>로그아웃</span></a></li>
							<li class="nav-item cta"><a
								href="<c:url value='/member/profile'/>" class="nav-link"><span>${sessionScope.userid}</span></a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item active"><a
								href="<c:url value='/member/loginForm'/>" class="nav-link">로그인/회원가입</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

	<div class="hero-wrap js-fullheight"
		style="background-image: url('<c:url value='/resources/images/bg_2.jpg'/>');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-9 text-center ftco-animate"
					data-scrollax=" properties: { translateY: '70%' }">
					<p class="breadcrumbs"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
						<span class="mr-2"><a
							href="<c:url value='/member/loginForm'/>">이미 회원이십니까?</a></span>
					</p>
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">회원가입</h1>

					<br>
					<br>
					<!-- Sign up form -->
					<section class="signup" style="text-align: center;">
						<div class="container">
							<div class="signup-content">
								<div class="signup-form">
									<form action="<c:url value='/member/sign'/>" method="POST"
										class="register-form" id="register-form"
										onsubmit="return formCheck()">
										<div class="form-group">
											<label for="name"><i
												class="zmdi zmdi-account material-icons-name"></i></label> <input
												type="text" name="user_id" id="userid"
												placeholder="아이디(3~12글자)" />
										</div>
										<div class="form-group">
											<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
												type="password" name="user_pwd" id="userpwd"
												placeholder="비밀번호(5~10글자)" />
										</div>
										<div class="form-group">
											<label for="re-pass"><i
												class="zmdi zmdi-lock-outline"></i></label> <input type="password"
												id="userpwd2" placeholder="비밀번호 확인" />
										</div>
										<div class="form-group">
											<label for="email"><i class="zmdi zmdi-email"></i></label>

											<c:choose>
												<c:when test="${requestScope.email != null }">
													<input type="email" name="user_email" id="usermail" value="${requestScope.email}" />
												</c:when>
												<c:otherwise>
													<input type="email" name="user_email" id="usermail" placeholder="이메일 확인" />
												</c:otherwise>
											</c:choose>
												

											
										</div>
										<div class="form-group form-button">
											<input type="submit" name="signup" id="signup"
												class="form-submit" value="회원가입" />
										</div>
									</form>
								</div>
								<div class="signup-image">
									<a href="/hermes" class="signup-image-link"
										style="color: white">메인 화면으로 돌아가기</a>
								</div>
							</div>
						</div>
					</section>

				</div>
			</div>
		</div>
	</div>





    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">대표자</h2>
              <p>SWDO 4기 4조 프론트엔드 담당 HDS
              </p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Navigation</h2>
              <ul class="list-unstyled">
                <li><a href="<c:url value='/'/>" 				class="py-2 d-block">메인 화면</a></li>
                <li><a href="<c:url value='/about'/>" 			class="py-2 d-block">이용 방법</a></li>
                <li><a href="<c:url value='/tour'/>" 			class="py-2 d-block">여행 정보</a></li>
                <li><a href="<c:url value='/map/mapmain'/>"		class="py-2 d-block">지도 정보</a></li>
                <li><a href="<c:url value='/board/boardmain'/>" class="py-2 d-block">게시판</a></li>
                <li>
                <c:choose>
          			<c:when test="${sessionScope.userid != null}">
          	 			 <li><a href="<c:url value='/member/profile'/>" 	class="py-2 d-block">회원 정보</a></li>
	         		</c:when>
          			<c:otherwise>
	          			<li><a href="<c:url value='/member/loginForm'/>" 	class="py-2 d-block">로그인</a></li>
          			</c:otherwise>
        		  </c:choose>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">외부 사이트</h2>
              <ul class="list-unstyled">
                <li><a href="https:www.google.com" class="py-2 d-block">구글</a></li>
                <li><a href="https:www.naver.com" class="py-2 d-block">네이버</a></li>
                <li><a href="https:kakaocorp.com" class="py-2 d-block">카카오</a></li>
                <li><a href="https:www.youtube.com" class="py-2 d-block">유튜브</a></li>
                <li><a href="https:softsociety.net/ictcenter" class="py-2 d-block">SWDO</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Q&A</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">광주 SWDO 4기 Hermes Project</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">010-0000-0000</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">wg4544@gmail.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p>
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
  All rights reserved <br>
  This Site is made with 
  by Hermes
 </p>
          </div>
        </div>
      </div>
    </footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
	<script
		src="<c:url value='/resources/js/jquery-migrate-3.0.1.min.js'/>"></script>
	<script src="<c:url value='/resources/js/popper.min.js'/>"></script>
	<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/resources/js/jquery.easing.1.3.js'/>"></script>
	<script src="<c:url value='/resources/js/jquery.waypoints.min.js'/>"></script>
	<script src="<c:url value='/resources/js/jquery.stellar.min.js'/>"></script>
	<script src="<c:url value='/resources/js/owl.carousel.min.js'/>"></script>
	<script
		src="<c:url value='/resources/js/jquery.magnific-popup.min.js'/>"></script>
	<script src="<c:url value='/resources/js/aos.js'/>"></script>
	<script
		src="<c:url value='/resources/js/jquery.animateNumber.min.js'/>"></script>
	<script src="<c:url value='/resources/js/bootstrap-datepicker.js'/>"></script>
	<script src="<c:url value='/resources/js/jquery.timepicker.min.js'/>"></script>
	<script src="<c:url value='/resources/js/scrollax.min.js'/>"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="<c:url value='/resources/js/google-map.js'/>"></script>
	<script src="<c:url value='/resources/js/main.js'/>"></script>

	<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
	<script src="<c:url value='/resources/js/main01.js'/>"></script>
</body>
</html>
