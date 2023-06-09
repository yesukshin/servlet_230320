<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무마켓</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
<style>
header {
	height: 80px;
}

nav {
	height: 50px;
}

.bb {
	margin: 20px;
	padding: 20px;	
	width: 330px;
	height: 220px;
	box-sizing: border-box;
	
}
</style>
</head>

<body>
	<div id="wrap" class="container">
		<header
			class="d-flex justify-content-center align-items-center bg-warning">
			<h2 class="font-weight-bold">HONG당무마켓</h2>
		</header>

		<nav class="bg-red d-flex align-items-center bg-warning">
			<ul class="nav nav-fill w-100">
				<li class="nav-item">리스트</li>
				<li class="nav-item">물건올리기</li>
				<li class="nav-item">마이페이지</li>
			</ul>
		</nav>

		<section>
			<div class="d-flex border-success">
				<div class="bb border"></div>
				<div class="bb border"></div>
				<div class="bb border"></div>
			</div>			
			<div class="d-flex mt-1 border-success">
				<div class="bb border"></div>
				<div class="bb border"></div>
				<div class="bb border"></div>
			</div>

		</section>

		<footer> </footer>
	</div>
</body>
</html>