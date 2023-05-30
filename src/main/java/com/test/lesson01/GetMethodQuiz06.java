package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson/quiz06")
public class GetMethodQuiz06 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		response.setContentType("text/html");		
	    response.setCharacterEncoding("utf-8");
	    
	    PrintWriter out = response.getWriter();
	    
	    int number1 = Integer.parseInt(request.getParameter("number1"));
	    int number2 = Integer.parseInt(request.getParameter("number2"));	    
	    
	    int add = number1 + number2;
	    int sub = number1 - number2;
	    int multi = number1 * number2;
	    int div = number1/number2;

//		out.println("addition:" + add);
//		out.println("subtaction:"+ sub); //
//		out.println("multiple:"+ multi);
//		out.println("division:"+ div);
		
		//JSON (Javascript Object Notation)으로 response 구성하기 
        //{"user_id":"shing27", "name":"신예숙","age":30}
	    //out.print("{\"user_id\":\"" + id + "\", \"name\":\"" + name + "\", \"age\":" + age + "}");
	    out.print("{\"addition\":" +add + "," 
	    	   	+ "\"subtaction\":" +sub + ","
	    	   	+ "\"multiple\":" +multi + ","
	    	   	+ "\"division\":" +div + "}");
	            
	    //"\", \"subtaction\":\"" +sub+"\",\"multiple\":"+multi+"\",\"division\":"+div+"\"}");	   
	    

	}

}
