package com.member.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inter.Command;
import com.member.DAO.memberDAO;
import com.member.DTO.memberDTO;

public class LoginService implements Command {
	
	public String execute(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		
		request.setCharacterEncoding("utf-8");
		
		String memId = request.getParameter("id");
		String memPw = request.getParameter("pw");
		
		memberDTO dto1 = new memberDTO(memId, memPw);
		
		memberDAO dao = new memberDAO();
		
		memberDTO dto = dao.Login(dto1);
		
		String nextpage = "";
		
		if(dto != null) {
			
			HttpSession session = request.getSession();
			
			session.setAttribute("dto", dto);
			
			nextpage = "LoginSuccess.jsp";
			
			}else{
				
			nextpage = "LoginFalse.jsp";
	}System.out.println(dto);
	return nextpage;
	
	}
}
