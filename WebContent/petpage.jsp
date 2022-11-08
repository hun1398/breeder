<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
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
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" onclick="location='Login.jsp'"
				href="#page-top"><img src="assets/img/logo.png" alt="..." /></a>

	</nav>
	<!-- pet section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<form action="petDelete.do" method="post">
						<tr>
							<td><c:choose>
									<c:when test="${empty pet.pictureUrl}">
										<img src="upload/$noimage.gif">
									</c:when>
									<c:otherwise>
										<div class="col-md-6">
											<img class="card-img-top mb-5 mb-md-0"
												src="upload/${pet.pictureUrl}">
										</div>
									</c:otherwise>
								</c:choose></td>
							<div class="col-md-6">							
								<h1 class="display-5 fw-bolder">${pet.name}</h1> 
								<div class="fs-5 mb-5">
									<td>${pet.price}원</td>
								</div>
								<p class="description">${pet.description}</p>
								<div class="d-flex">		
					<button class="btn btn-outline-dark flex-shrink-0" type="button" onclick="location='adoptpage.jsp'">
						<i class="bi-cart-fill me-1"></i> 입양신청서 작성 </button>
				</form>
			</div>
		</div>	
	</section>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
