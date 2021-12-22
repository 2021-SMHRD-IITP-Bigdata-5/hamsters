package com.member.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inter.Command;
import com.member.DAO.memberDAO;
import com.member.DTO.memberDTO;

public class JoinService implements Command {
	
	public String execute(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String intro = request.getParameter("intro");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");	
		String company = request.getParameter("company");	
		
		memberDTO dto = new memberDTO(id, email, pw, tel, company, intro);
		
		memberDAO dao = new memberDAO();
		int cnt = dao.Join(dto);
		
		// 1. memberDAO�� �ش��ϴ� ���  �޼ҵ�� �� �����ֱ�(��ü����, �޼ҵ�, �Ű�����)
		// 2. cnt �� �������ֱ� (�޼ҵ�, ����)
		
		if(cnt > 0) {
			request.setAttribute("dto", dto);
			
			RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
		}else {
			
		}
		return null;
		
	}
	
}
