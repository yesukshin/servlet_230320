package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MySqlService;

@WebServlet("/lesson04/ex01")
public class DatabaseEx01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest rerquest, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		// DB연결
		MySqlService ms = MySqlService.getInstance();
		ms.connect(); // 여기서 DB연결됨
		// DB select 결과 출력
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from 'used_goods'";
		
		try {
			ResultSet res = ms.select(selectQuery);
			while(res.next()) { // 결과행이 있는 동안 수행
				out.println(res.getInt("id")); // int형이므로 getint
				out.println(res.getString("title")); // varchar형이므로 getString
				out.println(res.getInt("price")); // 
				out.println(res.getString("description")); 
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB연결해제
		ms.disconnect();
	}

}
