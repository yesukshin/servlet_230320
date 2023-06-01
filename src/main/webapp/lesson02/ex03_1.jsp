<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
  <% 
  	String nickname = request.getParameter("nickname");
    String hobby = request.getParameter("hobby");
    String animal = request.getParameter("animal");
    String[] foodArr =  request.getParameterValues("food"); // 선택항목이 여러개 일때 
    String fruit = request.getParameter("fruit");
  %>
  
  
  <table border="1">
  	<tr>
  		<th>별명</th>
  		<td><%=nickname%></td>
  	</tr>
  	<tr>
  		<th>취미</th>
  		<td><%=hobby%></td>
  	</tr>
  	<tr>
  		<th>선호동물</th>
  		<td><%=animal%></td>
  	</tr>
  	<tr>
  		<th>선호하는 음식</th>
  		<td>
  			<%
  			    if (foodArr != null){
  			    	// a,b,c
  			    	String result = "";
  			    	for(String food : foodArr){
  			    		result = result + food + ",";
  			    	}
  			    	// 맨튀에 붙은 , 제거
  			    	result = result.substring(0,result.length()-1);
  			        out.print(result);
  			    }
  			%>
  		
  		</td>
  	</tr>
  	<tr>
  		<th>좋아하는 과일</th>
  		<td><%=fruit%></td>
  	</tr>
  </table>
</body>
</html>