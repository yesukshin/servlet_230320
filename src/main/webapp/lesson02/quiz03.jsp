<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>체격조건 입력</h2>
<form method="get" action="/lesson02/quiz03_1.jsp">
			<div class="d-flex"> <!-- div아래 태그내용이 같은 한줄로 보임  -->
				<input type="text" class="form-control col-3" name="height"  placeholder="키를 입력하세요">cm
				<input type="text" class="form-control col-3" name="weight"  placeholder="몸무게를 입력하세요">kg
			    <input type="submit" class="btn btn-primary" value="계산">
		    </div>
		</form>

</body>
</html>