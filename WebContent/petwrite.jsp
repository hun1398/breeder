<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
<script type="text/javascript" src="script/pet.js"></script>
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" onclick="location='Index.jsp'" href="#page-top"><img
				src="assets/img/logo.png" alt="..." /></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars ms-1"></i>
			</button>
	</nav>

<body>
<section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                   
                    <div class="col-md-6">
                       
                        <h1 class="display-5 fw-bolder">분양 게시물 작성</h1>
<form method = "post" enctype="multipart/form-data" name="frm">
<table>
<tr>
<th>name</th>
<td><input type="text" id="name" name="name" size="80"></td>
</tr>
<tr>
<th>책임비</th>
<td><input type="text" id="price" name="price"> 원</td>
</tr>
<tr>
<th>picture</th>
<td>
<input type="file" id="pictureUrl" name="pictureUrl" ><br>
</td>
</tr>
<tr>
<th>description</th>
<td><textarea cols="80" rows="10" id = "description" name="description"></textarea></td>
</tr>
</table><br>
<button class="btn btn-primary btn-xl text-uppercase"
												type="submit" value="등록" onclick="return petCheck()">
												<i class="fas fa-times me-1 "></i> 등록
											</button></form>
											</div>
											</div>
											
</div>
</section>
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