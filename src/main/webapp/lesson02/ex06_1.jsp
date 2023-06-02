<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		
			List<Map<String, Object>> list = new ArrayList<>();
			Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
			list.add(map);
			map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
			list.add(map);
			map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
			list.add(map);
			map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
			list.add(map);
			map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
			list.add(map);
			map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
			list.add(map);
			map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
            
			list.add(map);
%>

<div class="container">
	<h2 class="text-center">검색결과 목록</h2>
	
	
	
	<table border=1 class="table text-center">
	
	<thead>
	<tr>
	    <th>메뉴</th>
		<th>상호</th>
		<th>벌점</th>
	</tr>	
	</thead>
	
	<tbody>
	<%
	
	    String keyword = request.getParameter("keyword");
	    //boolean exclude = !filter= null; 
	    
	    // 체크됨: true, 체크안되어잇으면:null
	    String filter = request.getParameter("starPointerFilter");
	    
	    boolean exclude = !filter = null; 
	    
	    for (Map<String,Object> item :list) {
	       if(keyword.equals(item.get("menu"))) {
	    	   if(exclude && (double)item.get("point") <= 4.0) {
	    	    	  continue;
	    	     }
	    	   
			%>
			<tr>
			   <td><%= item.get("menu") %> </td>  
			   <td><%= item.get("name") %> </td>
			   <td><%= item.get("point") %> </td>
			</tr>
	<%
	    }
	}      
	%>
	</tbody>
</table>
</div>

</body>
</html>