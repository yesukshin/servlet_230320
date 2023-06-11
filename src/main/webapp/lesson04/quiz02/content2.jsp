<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class=mt-4>
	<h2>물건 올리기</h2>
</div>


<form name = "myform" method="post" action="/lesson04/Quiz02_Insert" onsubmit="return check()">
	<div class="d-flex mt-4">
		<select name="id" class="form-control col-3">
			<option value="">--아이디선택--</option>
			<%
			//DB연결
			MysqlService ms = MysqlService.getInstance();
			ms.connect();

			//DB select
			String selectQuery = "select id, nickname from seller";

			try {

				ResultSet res = ms.select(selectQuery);

				while (res.next()) {
			%>

			<option value="<%=res.getString("id")%>"><%=res.getString("nickname")%></option>

			<%
			}
			%>

		</select>

		<div class="form-group ml-2 col-5">
			<input type="text" class="form-control" id="title" name="title"
				placeholder="제목">
		</div>
		<div class="form-group ml-2 col-3">
			<input type="text" class="form-control" id="price" name="price"
				placeholder="가격">
		</div>
		<div class="form-group mt-1">
			<label>원</label>
		</div>

	</div>
	<div>
		<textarea class="form-control" id="description" name="description" rows="6"></textarea>
	</div>

	<div class="form-group d-flex mt-2">
		<label><small>이미지URL</small></label><input type="text"
			class="form-control" id="imgUrl" name="imgUrl">
	</div>

	<div class="form-group d-flex mt-2">
		<input type="submit" class="btn btn-secondary col-12" value="저장">
	</div>

</form>



<%
} catch (SQLException e) {
e.printStackTrace();
}

ms.disconnect();
%>