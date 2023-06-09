<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.test.common.MysqlService"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>
<head>
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

	<table border="1" class="table text-center">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th>자기소개</th>
				<th>삭제</th>
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
					<a href="/lesson04/ex02_delete?id=<%=res.getInt("id")%>">삭제하기</a>
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

	ms.disconnect();
	%>

</body>
</html>