<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="java.util.* "%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp</title>
</head>
<body>
<!-- HTML주석 : 소스보기에서 보인다-->
<%-- JSP주석 : 소스보기에서 보이지 않는다--%>
<%
   // 자바코드가 들어감, 자바문법시작
   // Scriptlet
   // main과 유사
   int sum = 0;

	for (int i=0; i<= 10; i++){
		sum += + i;
	}
%>
<b>합계: </b>
<input type="text" value="<%=sum%>">
<br>

<%!
   // 선언문
   // class와 유사
   // 필드와 메소드가 있음
   private int num = 100;
   // method
   public String getHelloWorld(){
	   return "Hello World";
   }
%>

<%= getHelloWorld() %>
<br>
<%= num + 200 %>
<%
List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
%>
</body>
</html>