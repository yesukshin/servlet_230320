package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");		
	    response.setCharacterEncoding("utf-8");
	    
	    String addr = request.getParameter("addr");
	    String card = request.getParameter("card");
	    int price = Integer.parseInt(request.getParameter("price"));	   
	    
	    String city = "서울시";
	    String card_shin = "신한카드";
	    String msg = "";
	    
	    PrintWriter out = response.getWriter();	  
	    
	    //if(!addr.contentEquals(city)) 
	    
//	    if(!addr.contentEquals(city)){
//	    	msg = "배달불가 지역 입니다";
//	    	out.println("<html><head></head><body>");
//	    	out.println(msg + "</body></html>");
//	    }
//	    else if (card_shin.equals(card)) {
//	    	msg = "결제 불가 카드입니다";
//	    	out.println("<html><head></head><body>");
//	    	out.println(msg + "</body></html>");
//	    }
//	    else
//	    {	
//	        out.println("<html><head></head><body>");
//	    	out.println(addr + "</body></html>");	    
//	    	
//	    }    	
	    out.println("<html><head></head><body>");
	    
	    if(addr.startsWith("서울시") == false){
	    	out.print("배달불가 지역 입니다");
	    }
	    else if (card_shin.equals(card)) {
	    	out.print("결제 불가 카드입니다");	    	
	    }
	    else
	    {	
	      out.print(addr + "<b>배달준비중</b><br>");
	      out.print("결제금액:" + price+ "원");	    	
	    }    	
		
	    out.println("</body></html>");
	}

}

