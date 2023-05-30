package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson/ex03")
public class GetMethod03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		//response.setContentType("test/html");
		response.setContentType("text/json");
	    response.setCharacterEncoding("utf-8");
	    
	    //request parameter 꺼내기
	    String user_id = request.getParameter("user_id");
	    String name = request.getParameter("name");
	    int age = Integer.parseInt(request.getParameter("age"));
	    
	    PrintWriter out = response.getWriter();
//		out.println("서블릿 호출");
//		out.println("user_id:"+ user_id);
//		out.println("name:"+ name);
//		out.println("age:"+ age);
		
		//JSON (Javascript Object Notation)으로 response 구성하기 
        //{"user_id":"shing27", "name":"신예숙","age":30}
	    
	    out.print("{\"user_id\":\"+user_id+\", \"name\":\"신예숙\",\"age\":50}");
	   
	}
}
