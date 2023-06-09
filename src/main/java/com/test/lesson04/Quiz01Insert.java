package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/Quiz01_Insert")

public class Quiz01Insert extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 응답정의 생략 - 화면이동하므로 => redirect할것이므로
		// 리퀘스트 파라미터 받기

		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// DB연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();

		//
		// DB insert
		String insertQuery = "insert into `favorfind`"
				+ "(`name`, `url`)"
				+ "values ('" + name + "', '" + url + "')";

		try {
			ms.update(insertQuery);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		// DB해제
		ms.connect();

		// 즐겨찾기 화면으로 이동(Redirect) : 또다른 페이지로 보냄, 새로운 리퀘스트가 생김
		response.sendRedirect("/lesson04/quiz01/favorList.jsp");

	}

}
