package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class memberDAO {
	
	public void getConn() {
		
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("클래스파일 로딩완료");

			// 3. DB에서 사용하는 ID/PW를 인증
			String url = "jdbc:oracle:thin:@127.0.0.1:1521";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			if (conn != null) {
				System.out.println("연결성공");
			} else {
				System.out.println("연결실패");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
