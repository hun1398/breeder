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
			<a class="navbar-brand" onclick="location='Main.jsp'" href="#page-top"><img
				src="assets/img/logo.png" alt="..." /></a>
				</div></nav>
		
<meta charset="utf-8">
<section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                   
                    <div class="col-md-6">
                        <div class="small mb-1">★입양조건★<br>

· 어떠한 상황에도 포기하지않고 끝까지 키워주실분<br>
· 기본적으로 반려동물에 대한 케어와 고양이의 특성을 잘 이해해주시는 분 (털날림, 수직공간 등)<br>
· 함께 사시는 모든 가족 구성원, 집주인의 동의가 되신 분 (가족, 혹인 본인에게 알러지가 있는지 확인)<br>
· 실내에서 양육 (외출묘, 산책묘, 마당묘, 베란다 등 바깥생활 불가)<br>
· 경제적 어려움이 없으신 분 (사료, 간식, 장난감, 병원 치료 등)<br>
· 입양 이후 사진, 동영상으로 고양이의 소식을 전해주실 수 있는 분<br>
· 입양시, 직접 댁을 방문하기에 가정방문에 동의, 주거 공간과 고양이에게 적합한 환경인지 확인이 가능하신 분 <br>
· 절대 타인에게 재분양하지않으며, 피치 못할 사정으로 못 키울시 반드시 저에게 연락해주실 분 <br>
<br><br>
★입양불가조건★
<br>
· 가까운 시일 내 결혼, 임신, 출산, 유학 등 예정이신 분<br>
· 해외 및 장기 출장이 잦으신 분<br>
· 이사, 군대 등 갑작스런 변동사항을 앞둔 분<br>
· 학생, 미성년자 등 고정 수익이 없으신 분<br>
· 알러지가 있거나 가족 구성원의 동의를 얻지 못하신 분<br><br></div>
                        <h1 class="display-5 fw-bolder">입양 양식</h1>
<table>
<tr>
거주 지역
<td><input type="text" id="name" name="name" size="80"></td>
</tr><br>
<tr>

<td>거주 형태<input type="text" id="name" name="name" size="80"></td>
</tr>
<tr>
<td>거주자 연령<input type="text" id="name" name="name" size="80"></td>
</tr>
<tr>
<td>그 외 하시고 싶은 말씀<textarea cols="80" rows="10" id = "description" name="description"></textarea></td>
</tr>
</table><br>
<button class="btn btn-primary btn-xl text-uppercase"
												type="submit" value="등록" onclick="location='petList.do'">
												<i class="fas fa-times me-1 "></i> 등록
											</button></form>
</div>
</body>
</html>