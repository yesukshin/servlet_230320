<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.test.common.MysqlService"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>
<head>
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
<title>사용자들</title>
</head>
<body>
	<h1>사용자들</h1>
	<!--
	create table favorfind ( id INT NOT NULL AUTO_INCREMENT, name varchar(20) not null, url varchar(50) not null, createDate timestamp DEFAULT current_timestamp, 
chgDate timestamp DEFAULT current_timestamp,  PRIMARY KEY(id))
ENGINE=InnoDB, CHARSET=utf8mb4;


insert into favorfind(name, url)
values
(
  '마론달','https://marondal.com'
) 
	 -->
	<%
	// DB연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();

	// DB select
	String selectQuery = "select * from  `favorfind` order by id desc";

	try {
		ResultSet res = ms.select(selectQuery);
	%>

	<table border="1" class="table text-center">
		<thead>
			<tr>
				<th>사이트명</th>
				<th>사이트주소</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<%
			while (res.next()) {
			%>

			<tr>
				<td><%=res.getString("name")%></td>
				<td><a href ="<%=res.getString("url")%>"><%=res.getString("url")%></a></td>
				<td><a href = "/lesson04/Quiz01_Delete?id=<%=res.getString("id")%>" class="btn btn-danger">삭제하기</a></td>
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

	ms.disconnect();
	%>

</body>
</html>