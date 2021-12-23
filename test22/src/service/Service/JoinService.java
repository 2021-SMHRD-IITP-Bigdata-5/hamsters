package service.Service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inter.Command;

import dao.DAO.newDAO;
import dto.DTO.newDTO;

public class JoinService implements Command{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
		newDTO dto = new newDTO(email, pw, tel, address);    //// joinSuccess.jsp로 보내줘야함

		newDAO dao = new newDAO();
		int cnt = dao.Join(dto);  //// 묶여있는 dto를 넣어줌.
		
		if(cnt>0) {  //결과값은 DAO가 알고있기 때문에 오류남. DAO에서 값을 넘겨받아야 함.
			request.setAttribute("dto", dto);   /// session이 아니라 현재 가지고있는 JoinCon에 저장되어있는 request의 dto
			RequestDispatcher dis = request.getRequestDispatcher("joinSuccess.jsp");     /// 현재 JoinCon이 가지고있는 dto를 가지고 이동하는 역활
			dis.forward(request, response);  	/// 
		}else {
			
		}
		return null;
		
	}

}
