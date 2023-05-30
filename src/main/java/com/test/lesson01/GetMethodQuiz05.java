package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson/quiz05")
public class GetMethodQuiz05 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		response.setContentType("text/html");		
	    response.setCharacterEncoding("utf-8");
	    
	    PrintWriter out = response.getWriter();
	    
	    int dan = Integer.parseInt(request.getParameter("dan"));
	    
	    out.println("<html><head><title>구구단</title></head><body><ul>");
	    
	    for (int i=1; i<=9; i++) {
	    	
	    	int rult = dan * i;
	    	
	    	out.println("<li>" + dan + "X" + i + "=" + rult + "</li>");
	    }
	    
	    out.println("</ul></body></html>");
	    

	}

}
