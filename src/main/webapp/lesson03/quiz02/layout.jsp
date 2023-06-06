<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	height: 50px;
}

nav {
	height: 100px;
}

li {
	margin: 50px 0px;
	margin-right: 20px;
}

,
content1 {
	margin: 50px 0px;
}

footer {
	height: 100px;
}
</style>

</head>
<body>
	<!-- 헤더, 메뉴, 컨텐트1, 컨텐트2, 푸터 -->
	<div id="wrap" class="container">
		<header class="d-flex justify-content-left align-items-center">
			<jsp:include page="header.jsp" />
		</header>
		<nav class="d-flex justify-content-left mt-10">
			<jsp:include page="menu.jsp" />
		</nav>
		<%
		String title = request.getParameter("title");
		String jsp = "";
		if (title == null) {
			jsp = "content1.jsp";
		} else {
			jsp = "content2.jsp";
		}
		%>
		<!-- <div><%=title%></div> -->
		<section class="contents">
			<jsp:include page="<%=jsp%>" />
		</section>
	</div>
	<footer class="d-flex justify-content-center align-items-center">
		<jsp:include page="footer.jsp" />
	</footer>
</body>
</html>