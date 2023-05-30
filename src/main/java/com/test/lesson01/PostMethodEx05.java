package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex05")
public class PostMethodEx05 extends HttpServlet {
	
	// 404: 페이지 없음 405:request 메소드 불일치
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");		
	    //response.setCharacterEncoding("utf-8");// 응답에 대한 인코딩
	    
	    String userId = request.getParameter("userId");
	    String name = request.getParameter("name");  //한글 깨짐
	    String email = request.getParameter("email");
	    String birth = request.getParameter("birth");	   
	    
	    PrintWriter out = response.getWriter();
	    
	    // 테이블로 출력
	    out.print("<html><head><title>회원정보</title></head><body>");
	    out.print("<table border=1>");
	    out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>");
	    out.print("<tr><th>이름</th><td>" + name + "</td></tr>");
	    out.print("<tr><th>이메일</th><td>" + email + "</td></tr>");
	    out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
	    out.print("</table></body></html>");
		
	}

}
