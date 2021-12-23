package dao.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import dto.DTO.newDTO;

public class newDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1521";
			String dbid = "hr";
			String dbpw = "hr";
			
			conn = DriverManager.getConnection(url, dbid, dbpw);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if(rs != null){
	            rs.close();
	        }
			if(psmt!=null) {
				psmt.close();
			}
			if(conn!=null) {
				conn.close();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
public int Join(newDTO dto) {
		
		try {
			conn();
			
			String sql = "insert into member_message values (?, ?, ?, ?, sysdate)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getTel());
			psmt.setString(4, dto.getEmail()); 
			//// dto�� �����ֱ� ������ dto���� ���� �������ش�.
			// ����ڰ� � ���� �Է��ߴ��� ��. �������� �޾ƿ;���.
			
			cnt = psmt.executeUpdate();
			// ������ �̵��� ���� cnt ���� �������� �Ű������.
			
			
			
		}catch(Exception e) {
			//ClassNotFoundException, SQLException
			e.printStackTrace();
			
		}finally {
			close();
			
		}
		return cnt;
		
	}
}
