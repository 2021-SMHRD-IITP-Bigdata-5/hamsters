package com.member.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inter.Command;
import com.member.DAO.memberDAO;
import com.member.DTO.memberDTO;

public class UpdateService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		memberDTO dto = (memberDTO)session.getAttribute("dto");
		
		String id = dto.getMemId();
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");	
		String email = request.getParameter("email");
		
		memberDTO dto1 = new memberDTO(id, email, pw, tel);
		memberDAO dao = new memberDAO();
		int cnt = dao.Update(dto);
		
		if (cnt > 0) {
			
			memberDTO update_dto = new memberDTO(id, email, pw, tel);
			
			session.setAttribute("dto", update_dto);
			
			response.sendRedirect("main.jsp");
			
		} else {

		}
		return null;
	}

}
