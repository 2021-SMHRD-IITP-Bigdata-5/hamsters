package com.member.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.member.DTO.memberDTO;
	
public class memberDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	int cnt = 0;
	memberDTO dto = null;
	private boolean check;
	
	public void getConn() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			System.out.println("클래스파일준비");
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524";
			String dbid = "cgi_7_1_1216";
			String dbpw = "smhrd1";

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
	
	public void close() {
		
		System.out.println("무조건 실행");
		try {
			if (rs != null){
				rs.close();			
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public int Join(memberDTO dto) {
		
		try {
			getConn();
			// --------------DB연결------
			String sql = "insert into t_member values (?, ?, ?, ?, ?, ?, ?, sysdate)";
			// 5. SQL명령문을 준비
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getMemId());
			psmt.setString(2, dto.getMemPw());
			psmt.setString(3, dto.getMemName());
			psmt.setString(4, dto.getMemCompany());
			psmt.setString(5, dto.getMemEmail());
			psmt.setString(6, dto.getMemPhone());
			psmt.setString(7, dto.getMemStatus());

			// 6. SQL명령문 실행
			cnt = psmt.executeUpdate();

			// 7.명령 후 처리

		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public int Delete(String id) {
	
		try {
			getConn();

			String sql = "delete from member where id = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			close();
		}
		return cnt;
	}

	public int Update(memberDTO dto) {
	
		try {
			getConn();

			String sql = "update member_message set pw = ? ,name= ?,company = ?, email = ?, phone = ?, status= ? where id = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getPw());
			psmt.setString(2, dto.getTel());
			psmt.setString(3, dto.getEmail());
			psmt.setString(4, dto.getId());

			// 6. SQL명령문 실행
			cnt = psmt.executeUpdate();

			// 7.명령 후 처리

		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public memberDTO Login(memberDTO dto1) {
		
		try {
			getConn();

			
			String sql = "select * from t_member where id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto1.getMemId());
			
			
			rs = psmt.executeQuery();

			if (rs.next()) {
				String getId = rs.getString(1);
				String getPw = rs.getString(2);
				String getName = rs.getString(3);
				String getCom = rs.getString(4);
				String getEmail = rs.getString(5);
				String getPhone = rs.getString(6);
				String getStat = rs.getString(7);
				if(dto1.getMemPw().equals(getPw)) {
					dto = new memberDTO(dto1.getMemId(), getPw, getName, getCom, getEmail, getPhone, getStat);
				}
				
			}
		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			close();
		}System.out.println(dto);
		return dto;
	}
	
	

	public boolean idcheck(String id) {
		
		
		
		try {
			getConn();

			
			String sql = "select * from member where id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			
			rs = psmt.executeQuery();
			check = rs.next();
			
		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			close();
		}
		
		return check;
	}

	
}

