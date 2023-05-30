package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet {
	
	// 404: 페이지 없음 405:request 메소드 불일치
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");		
	    //response.setCharacterEncoding("utf-8");// 응답에 대한 인코딩
	    
	    String name = request.getParameter("name");
	    String intro = request.getParameter("intro");  //한글 깨짐
	   
	    PrintWriter out = response.getWriter();
	    
	    out.println("<html><head></head><body>");
	    
	    out.print("<b>" + name + "</b>" + "님 지원이 완료되었습니다." + "<br>");
	    
	    out.print("<h3> 지원내용 </h3>" );
	    
	    out.print(intro);
	    
	    out.println("</body></html>");	    
	   
	}

}
