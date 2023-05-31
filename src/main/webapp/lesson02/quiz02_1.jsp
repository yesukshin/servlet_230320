<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.* "%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜시간확인</title>
</head>
<body>
 
 <%
    //String msg = null; 
    String gubun = request.getParameter("gubun");
    
 	Date now = Calendar.getInstance().getTime(); //Date now = new Date(); 
 	SimpleDateFormat sdf = null;
 	
 	if (gubun.equals("A")) {
    	
 		sdf =  new SimpleDateFormat("현재 시간은 HH시 mm분 ss초");
 		
    }
    else if (gubun.equals("B")) {
    	
    	sdf =  new SimpleDateFormat("현재 날짜은 YYYY년 MM월 dd일");
 		
    }
 	
 	String msg = sdf.format(now);
 %>
 
<div class="display-4">
	<h1><%=msg%></h1>
</div>
	
	

</body>
</html>