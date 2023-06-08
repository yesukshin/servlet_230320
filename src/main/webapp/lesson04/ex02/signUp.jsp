<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>

	<%-- 

 흐름1) 유저추가 : signUp.jsp(폼) -> Ex02Insert(서블릿,DB insert) -> userList.jsp(유저리스트, DB select)
 흐름2) 유저삭제 : userList.jsp(유저리스트, DB select) 여기서 삭제 클릭 -> Ex02Delete(서블릿,DB delete) -> userList.jsp(유저리스트, DB select)
       
--%>

	<form method="post" action="/lesson04/ex02_insert">

		<P>
			<b>이름</b> <input type="text" name="name">
		</P>

		<P>
			<b>생년월일</b> <input type="text" name="yyyymmdd">
		</P>

		<P>
			<b>이메일</b> <input type="text" name="email">
		</P>

		<P>
			<b>자기소개</b><br>
			<textarea name="introdude" rows="5" cols="50"> </textarea>
		</P>
		
		<input type="submit" value="추가">


	</form>

</body>
</html>