<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>breeder</title>
<!-- Favicon-->
<link rel="icon" type="image/x-ic555ㅅㅎon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<script type="text/javascript" src="script/member.js"></script>
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top"><img
				src="assets/img/logo.png" alt="..." /></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars ms-1"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
					<li class="nav-item"><a class="nav-link" href="#notice">notice</a></li>
					<li class="nav-item"><a class="nav-link" href="#about">브리더란?</a></li>
					<li class="nav-item"><a class="nav-link" href="#adopt">입양신청</a></li>
					<li class="nav-item"><a class="nav-link" href="#QA">Q&A</a></li>
					<li class="nav-item"><a class="nav-link" onclick='location="download.jsp"'>AR</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead">
		<div class="container">
			<div class="masthead-subheading">Welcome To Our Site!</div>
			<div class="masthead-heading text-uppercase">It's Nice To Meet You</div>
		</div>
	</header>
	<!-- notice-->
	<section class="page-section" id="notice">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">notice</h2>
				<h3 class="section-subheading text-muted">Rule of three</h3>
			</div>
			<div class="row text-center">
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> 
					<i class="fas fa-circle fa-stack-2x text-primary"></i> 
					<i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">NO STUDIO</h4>
					<p class="text-muted">'breeder'에서는 스튜디오 사진을 금지합니다.</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> 
					<i class="fas fa-circle fa-stack-2x text-primary"></i> 
					<i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">NO PHOTOSHOP</h4>
					<p class="text-muted">'breeder'에서는 보정 사진을 금지합니다.</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-lock fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="my-3">NO MONEY</h4>
					<p class="text-muted">'breeder'에서는 책임비(최대 15만원) 제외 금전 거래를 금지합니다.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- About-->
	<section class="page-section" id="about">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">breeder</h2>
				<h3 class="section-subheading text-muted">what is the breeder</h3>
			</div>
			<ul class="timeline">
				<li>
					<div class="timeline-image">
						<img class="rounded-circle img-fluid" src="assets/img/about/1.jpg" alt="..." />
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<h4>1.</h4>
							<h4 class="subheading"></h4>
						</div>
						<div class="timeline-body">
							<p class="text-muted">개공장, 펫샵 등 반려동물을 상업적으로 이용한 곳을 반대하는 곳입니다.</p>
						</div>
					</div>
				</li>
				<li class="timeline-inverted">
					<div class="timeline-image">
						<img class="rounded-circle img-fluid" src="assets/img/about/2.jpg" alt="..." />
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<h4>2.</h4>
							<h4 class="subheading"></h4>
						</div>
						<div class="timeline-body">
							<p class="text-muted">가정에서 태어난 반려동물들이 새로운 가족을 찾아갈 수 있는 공간입니다.</p>
						</div>
					</div>
				</li>
				<li>
					<div class="timeline-image">
						<img class="rounded-circle img-fluid" src="assets/img/about/3.jpg" alt="..." />
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<h4>3.</h4>
							<h4 class="subheading"></h4>
						</div>
						<div class="timeline-body">
							<p class="text-muted">반려동물을 책임질 수 있는 성인들만 가입이 가능한 곳입니다.</p>
						</div>
					</div>
				</li>
				<li class="timeline-inverted">
					<div class="timeline-image">
						<img class="rounded-circle img-fluid" src="assets/img/about/4.jpg" alt="..." />
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<h4>4.</h4>
							<h4 class="subheading"></h4>
						</div>
						<div class="timeline-body">
							<p class="text-muted">반려 동물들의 수명이 다할 때까지 사랑과 정성으로 키워줄 가족을 찾는 곳입니다.</p>
						</div>
					</div>
				</li>
				<li class="timeline-inverted">
					<div class="timeline-image">
						<h4>
							Give <br /> Your <br /> Love!
						</h4>
					</div>
				</li>
			</ul>
		</div>
	</section>

	<!-- adopt-->
    <section class="page-section bg-light" id="adopt">
		<center>
			<h2 class="section-heading text-uppercase">가족을 찾습니다</h2>
			<a href="petWrite.do">등록</a>
		</center>
		<br>
		<c:forEach var="pet" items="${petList}">
			<!-- pet image-->
			<div style="text-align: center;">
				<img style="width: 500px" src="upload/${pet.pictureUrl}">
			</div>
			<!-- pet details-->
			<div class="text-center">
				<!-- pet name-->
				<td>${pet.name}</td>
				<br>
				<!-- pet price-->
				<td>${pet.price}원</td>
			</div>
			<!-- pet actions-->
			<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
				<div class="text-center">
					<a class="btn btn-outline-dark mt-auto"
						href="petDelete.do?name=${pet.name}">자세히 보기</a>
				</div>
			</div>
		</c:forEach>
	</section>
	<section class="page-section" id="QA">
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">Q & A</h2>
				<h3 class="section-subheading text-muted"></h3>
					<div align="center">
					<table class="list">
					<tr>
					<td colspan="4" style="border : white; text-align : right">
					<a href="BoardServlet?command=board_write_form">게시물 등록</a>
					</td>
					</tr>
					<tr><th>번호</th><th>제목</th><th>작성자</th><th>작성일</th></tr>
					<c:forEach var="board" items="${boardList}">
					<tr class="record">
					<td>${board.num}</td>
					<td>
					<a href="BoardServlet?command=board_view&num=${board.num}">${board.title}</a>
					</td>
					<td>${board.name}</td>
					<td><fmt:formatDate value="${board.writedate}"/></td>
					</tr>
					</c:forEach>
					</table>
					</div>
			</div>
		</div>		
	</section>
	<!-- Footer-->
	<footer class="footer py-4">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-4 text-lg-start">Copyright &copy; Your Website 2021</div>
				<div class="col-lg-4 my-3 my-lg-0">
					<a class="btn btn-dark btn-social mx-2" href="#!"><i
						class="fab fa-twitter"></i></a> <a
						class="btn btn-dark btn-social mx-2" href="#!"><i
						class="fab fa-facebook-f"></i></a> <a
						class="btn btn-dark btn-social mx-2" href="#!"><i
						class="fab fa-linkedin-in"></i></a>
				</div>
				<div class="col-lg-4 text-lg-end">
					<a class="link-dark text-decoration-none me-3" href="#!">Privacy Policy</a> 
					<a class="link-dark text-decoration-none" href="#!">Terms of Use</a>
				</div>
			</div>
		</div>
	</footer>
				<!-- Bootstrap core JS-->
				<script
					src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
				<!-- Core theme JS-->
				<script src="js/scripts.js"></script>
				<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
				<!-- * *                               SB Forms JS                               * *-->
				<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
				<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
				<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
