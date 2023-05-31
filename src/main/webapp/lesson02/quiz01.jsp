<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
// 1부터 n까지 합의 메소드
	public int getSum(int n){
	    int sum = 0;
		for(int i = 1; i <= n ; i++ ){
			sum += i;
		}
		return sum;
	}
%>

<h2> 1부터 50까지의 합은 <%=getSum(50)%>입니다.</h2>

<%
	int[] scores = {80, 90, 100, 95, 80};

    int sum =0;
	for (int i = 0 ; i < scores.length ; i++  ) {
		sum = sum + scores[i];
	}
	
	double avg = (double) (sum /  scores.length);	
  
%>
<h2> 평균점수는 <%=avg%>입니다.</h2>

<%

	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
    
    Iterator<String> iter = scoreList.iterator();
    
    int score = 0;
    
    /* int size = scoreList.size();
    
    while(iter.hasNext()) {
	    String line = iter.next();
	    if(line.equals("O")) {
	    	score  =  score + 10;
	    }
	}*/
    
    for ( int i = 0 ; i <scoreList.size() ; i++ ){
    	if (scoreList.get(i).equals("O")){
    		//score = 
    	}
    }
    
%>
<h2> 채점결과는 <%= score %> 입니다.</h2>

<%
 // 나이구하기
 String birthDay = "20010820";

 String yearStr = birthDay.substring(0,4);
 
 //out.print(yearStr);
 int age = 2023-Integer.parseInt(yearStr) + 1;
%>
<h2> <%=birthDay%> 의 나이는 <%=age%> 입니다.</h2>

</body>
</html>