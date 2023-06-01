<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>

    
	<%
		int length = Integer.parseInt(request.getParameter("length"));
	    String[] chgArr =  request.getParameterValues("chg");
	    String[] chgArr1 = new String[4];
	    
	%>
	
	<div class="container" >
		<h1>길이변환결과</h1>
		<h3><%=length%>cm</h3>
	</div>	
	
	<div class="container" >
	<h2>
	   <% 
	        double inch = length*0.3936996;
			double yard  = length*0.0109361;
			double ft = length*0.0328084;
			double mt = length*0.01;
				
			if (chgArr != null){
				for(int i=0; i < chgArr.length ; i++){
			    	if (chgArr[i].equals("인치")){
			    		out.print(inch + "inch" + "<br>");  
			    	}else if (chgArr[i].equals("야드")){
			    		out.print(yard + "yard"+"<br>");  
			    	}else if (chgArr[i].equals("피트")){
			    		out.print(ft + "ft" + "<br>" );  
			    	}else if (chgArr[i].equals("미터")){
			    		out.print(mt + "mt" +"<br>");  
			    	} 
				}
			}
			else {
				out.print("변환결과 없음" + "<br>");  
			}
				
		  
		%>
	</h2></div>
	
	
	
	
	
	
	
	
	

</body>
</html>