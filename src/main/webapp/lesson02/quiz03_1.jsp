<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!--BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0)); -->
 <%
 String status = null;
  int height = Integer.parseInt(request.getParameter("height"));
  int weight = Integer.parseInt(request.getParameter("weight"));
  
  double bmi = weight / ((height / 100.0) * (height / 100.0)); 
  
  if (bmi <= 20){
	   status = "저체중";
  }else if (bmi >= 21 && bmi <= 25){
	   status = "정상";
  }else if (bmi >= 26 && bmi <= 30){
	   status = "과체증";
  }else if (bmi >= 31){
	   status = "비만";
  }
 %>
 
 
<div>
    <h2> BMI 측정결과 </h2>
	<h1> 당신은 <%=status%>  입니다</h1>
	<h4> BMI 수치 <%=bmi %> </h4>
</div>

</body>
</html>