package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySqlService {

	// field
	private static MySqlService mysqlservice = null;
	
	// 도메인 뒤에 접속할 데이터 베이스명까지 넣는다
	private String url = "jdbc:mysql://localhost:3306/test_230320";
	private String id = "root";
	private String pw = "root";
	
	private Connection conn = null; 
	private Statement statement;
	private ResultSet res;
	
	// Method
	// 디자인패턴(구조에 대한 패턴)
	// Singleton 패턴; 프로젝트 내에서 MySqlService의 객체가 딱한번만 생성되게 하는 디자인 패턴
	
	public static MySqlService getInstance() {
		if(mysqlservice == null) {
			mysqlservice = new MySqlService();
		}
		return mysqlservice;		
	}
	
	//DB접속메소드 - jdbc연결
	public void connect() {
		
		try {
			// 1. 드라이버를 메모리에 로딩한다
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			// 2. DB에 연결한다
			conn = DriverManager.getConnection(url, id, pw);
		    // 3. statement : DB와 연결해서 쿼리를 실행하기 위한 준비
			statement = conn.createStatement();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// DB연결해제
	public void disconnect() {
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// R:: select
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	} 
	
	// CUD
	public void update(String query) throws SQLException {
		statement.executeQuery(query);
	}
	
	
}
