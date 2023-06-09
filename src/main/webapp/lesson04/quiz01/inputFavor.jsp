<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>URL입력</title>
</head>
<body>
    <h2>즐겨찾기 추가</h2>
	<form method="post" action="/lesson04/Quiz01_Insert">
		사이트명<br> <input type="text" name="name"><br><br>
		사이트주소<br>  <input type="text" name="url">
		<input type="submit" class="btn btn-info" value="URL 등록">
	</form>

</body>
</html>