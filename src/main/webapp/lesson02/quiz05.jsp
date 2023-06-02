<%@page import="java.util.Iterator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<title>장보기</title>
</head>
<body>
	
	
	<div class="container">
	<h2 class="text-center">장보기 목록</h2>
	<table border=1 class="table text-center">
	<thead>
	
		<tr>
			<th>번호</th>
			<td>품목</td>
		</tr>
    </thead>
    <tbody>
		<%
		
			List<String> goodsList = Arrays.asList(new String[] { "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제" });

			//Iterator<String> iter = goodsList.iterator();
		
			for (int i = 0; i < goodsList.size(); i++) {

				String product = goodsList.get(i);
		%>
			<tr>
				<th><%=i + 1%></th>
				<td><%=product%></td>
			</tr>

		<%
			}
		%>
	</tbody>	
	</table>
	</div>
</body>
</html>