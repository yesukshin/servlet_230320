<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@page import="com.test.common.MysqlService"%>
<%@page import="java.sql.SQLException"%>
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
<meta charset="UTF-8">
<title>사용자들</title>
</head>
<body>
	<h1>사용자들</h1>
	<%
	// DB연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();

	// DB select
	String selectQuery = "select * from  `new_user`";

	try {
		ResultSet res = ms.select(selectQuery);
	%>

	<table class="table text-center">
		<thead>
			<tr>
				<th>id</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th>자기소개</th>
				<th>삭제여부</th>
			</tr>
		</thead>
		<tbody>
			<%
			while (res.next()) {
			%>

			<tr>
				<td><%=res.getInt("id")%></td>
				<td><%=res.getString("name")%></td>
				<td><%=res.getString("yyyymmdd")%></td>
				<td><%=res.getString("email")%></td>
				<td><%=res.getString("introduce")%></td>
				<td>
				<form method = "post" action ="/lesson04/ex02/signUp.jsp">
					<input type = "submit" class="btn btn-info" value="삭제">
				</form>
				</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

	<%
	} catch (SQLException e) {
		e.printStackTrace();
	}
	%>
</body>
</html>