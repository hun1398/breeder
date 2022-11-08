<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
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
			<a class="navbar-brand" onclick="location='Main.jsp'"
				href="#page-top"><img src="assets/img/logo.png" alt="..." /></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars ms-1"></i>
			</button>
	</nav>
</head>
<body>
<section>
		<div class="container">
			<div class="text-center">
				<h2 class="section-heading text-uppercase">Q & A</h2><br>
<form id="contactForm">
				<div class="row align-items-stretch mb-5">
					<div class="col-md-6">
						<div class="form-group">
							<!-- Name input-->
							<form name="frm" method="post" action="BoardServlet">
							<input type="hidden" name="command" value="board_write">
							<input class="form-control" name="name" type="text"
								placeholder="Your Name *" data-sb-validations="required" />
							<div class="invalid-feedback" data-sb-feedback="name:required">A
								name is required.</div>
								<input class="form-control" name="pass" type="password"
								placeholder="Your password *" data-sb-validations="required" />
							<div class="invalid-feedback" data-sb-feedback="password:required">A
								password is required.</div>
								
						</div>
						<div class="form-group">
							<!-- Email address input-->
							<input class="form-control" name="email" type="email"
								placeholder="Your Email *" data-sb-validations="required,email" />
							<div class="invalid-feedback" data-sb-feedback="email:required">An
								email is required.</div>
							<div class="invalid-feedback" data-sb-feedback="email:email">Email
								is not valid.</div>
						</div>
						<div class="form-group mb-md-0">
							<!-- Phone number input-->
							<input class="form-control" name="title" type="text"
								placeholder="Your title *" data-sb-validations="required" />
							<div class="invalid-feedback" data-sb-feedback="title:required">A
								title number is required.</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group form-group-textarea mb-md-0">
							<!-- Message input-->
							<textarea class="form-control" name="content" cols="70" rows="15"
								placeholder="Your Message *" data-sb-validations="required"></textarea>
							<div class="invalid-feedback" data-sb-feedback="message:required">A
								message is required.</div>
						</div>
					</div>
				</div>				
				  <div class="text-center"><button class="btn btn-primary btn-xl text-uppercase" type="submit" onclick="location.href='BoardServlet?command=board_list'">
						<i class="fas fa-times me-1 "></i> send
					</button></div>
					
			</form>
		</div>
		</div>
		</section>
		<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2021</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>

</body>
</html>
		

</body>
</html>