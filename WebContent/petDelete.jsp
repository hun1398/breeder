<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>breeder</title>
</head>
<body>
	<div id="wrap" align="center">
		<h1>상품 삭제</h1>
		<from action="petDelete.do" method="post">
		<table>
			<tr>
				<td><c:choose>
						<c:when test="&{empty pet.pictureUrl}">
							<img src="upload/noimage.gif">
						</c:when>
						<c:otherwise>
							<img src="upload/${pet.pictureUrl}">
						</c:otherwise>
					</c:choose></td>
				<td>
					<table>
						<tr>
							<th style="width: 80px">상품명</th>
							<td>${pet.name}</td>
						</tr>
						<tr>
							<th>가격</th>
							<td>${pet.price}원</td>
						</tr>
						<tr>
							<th>설명</th>
							<td><div style="height: 220px; width: 100px">${pet.description}</div></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<br>
		<input type="hidden" name="name" value="${pet.name}"> 
		<input
			type="submit" value="삭제"> 
			<input type="button" value="목록"
			onclick="location.href='petList.do'"> </from>
			</div>
			</body>
			</html>