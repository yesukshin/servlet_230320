<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>계산결과</title>
</head>
<body>
<div class="container">
<h4>계산결과</h4>
</div>
<%
   int number1 = Integer.parseInt(request.getParameter("number1"));
   int number2 = Integer.parseInt(request.getParameter("number2"));
   String calculate = request.getParameter("calculate");
   double result = 0;
   
   if (calculate.equals("+")){
	   result = number1 + number2;
   }else if (calculate.equals("-")){
	   result = number1 - number2;
   }else if (calculate.equals("*")){
	   result = number1 * number2;
   }else if (calculate.equals("/")){
	   result = number1 / number2;
   }
%>
<div class="container">
<h1><%=number1%> <%=calculate%> <%=number2%> = <span style="color:blue"><%=result%></span></h1>
</div>

</body>
</html>