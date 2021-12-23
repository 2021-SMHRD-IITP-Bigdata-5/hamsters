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
		
		String memId = request.getParameter("memId");
		String memPw = request.getParameter("memPw");
		String memName = request.getParameter("memName");
		String memCompany = request.getParameter("memCompany");
		String memEmail = request.getParameter("memEmail");	
		String memPhone = request.getParameter("memPhone");	
		String memStatus = request.getParameter("memStatus");	
		
		memberDTO dto = new memberDTO(memId, memPw, memName, memCompany, memEmail, memPhone, memStatus);
		
		memberDAO dao = new memberDAO();
		int cnt = dao.Join(dto);
		
		// 1. memberDAO에 해당하는 기능  메소드로 값 보내주기(객체생성, 메소드, 매개변수)
		// 2. cnt 값 리턴해주기 (메소드, 리턴)
		
		if(cnt > 0) {
			request.setAttribute("dto", dto);
			
			RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
		}else {
			
		}
		return null;
		
	}
	
}
