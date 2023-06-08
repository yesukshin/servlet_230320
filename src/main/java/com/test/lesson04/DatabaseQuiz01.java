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

@WebServlet("/lesson04/quiz01")
public class DatabaseQuiz01 extends HttpServlet{
  
	@Override
	public void doGet(HttpServletRequest rerquest, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");

		// DB연결
		MySqlService ms = MySqlService.getInstance();
		ms.connect(); // 여기서 DB연결됨

		// DB insert
		String insertQuery = " insert into 'real_estate' "
				+ "(realtorId,		address,			area,		type,			price,rentPrice) " 
				+ "values"
				+ "(3,'서울 송파구',100,'매매',100000,200000)";

		try {
			ms.update(insertQuery);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		String selectQuery = "select 'address',	'area',	'type' "
		                    + "from 'real_estate' "
			              	+ "where order by 'id' desc" + "limit 10";
		try {
			PrintWriter out = response.getWriter();
			ResultSet res = ms.select(selectQuery);

			while (res.next()) {
				String address = res.getString("address");
				int area = res.getInt("area");
				String type = res.getString("type");

				out.println("매물주소:" + address + "면적:" + area + "타입" + type);
			}
			;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		// DB select 결과출력

		// DB연결해제
		ms.disconnect();
	}
}
