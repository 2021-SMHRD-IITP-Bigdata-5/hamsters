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
			System.out.println("Ŭ�������� �ε��Ϸ�");

			// 3. DB���� ����ϴ� ID/PW�� ����
			String url = "jdbc:oracle:thin:@127.0.0.1:1521";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			if (conn != null) {
				System.out.println("���Ἲ��");
			} else {
				System.out.println("�������");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
