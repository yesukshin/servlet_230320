package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");		
	    response.setCharacterEncoding("utf-8");
	    
	    String search = request.getParameter("search");
	    
	    List<String> list = new ArrayList<>(Arrays.asList(
	            "강남역 최고 맛집 소개 맛집 합니다.", 
	            "오늘 기분 좋은 일이 있었네요.", 
	            "역시 맛집 데이트가 제일 좋네요.", 
	            "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
	            "자축 저 오늘 생일 이에요."));
	    
	    PrintWriter out = response.getWriter();	  
	    
	    //out.println("<html><head></head><body>");
	    
	    Iterator<String> iter = list.iterator();
	    
	    while(iter.hasNext()) {
	    	String line = iter.next();
	    	if(line.contains(search)) {
	    		//out.print(line + "<br>");
	    		
	    		//1) replace "맛집" = > "<b>맛집</b>"
	    		//line = line.replace(search, "<b>" + search + "</b>");
	    		//out.print(line + "<br>");
	    		
	    		//2) split
	    		String[] words = line.split(search);
	    		out.print(words[0] + "<b>" + search + "</b>" + words[1] + "<br>");
	    	}
	    }
	    
	    
	    
	    
	    
//	    for(int i=0; i < list.size(); i++) {
//        	
//        	String str = list.get(i);
//        	
//        	if (str.contains(search)){
//        		
//        		int idx1 = str.indexOf(search);
//        		
//        		String strBefore = str.substring(0, idx1);
//        		//int strBeforelen = strBefore.length();        		
//        		
//        		String strSearch = search;
//        		int strSearchlen = search.length();
//        		
//        		String strAfter = str.substring(idx1+strSearchlen);
//        		
//        		out.print(strBefore);
//        		out.print("<b>" + strSearch + "</b>");
//        		out.print(strAfter+ "<br>");
//        	}
//        		
//        }	    
		
	    out.println("</body></html>");
	}
	
}

