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
		
		newDTO dto = new newDTO(email, pw, tel, address);    //// joinSuccess.jsp�� ���������

		newDAO dao = new newDAO();
		int cnt = dao.Join(dto);  //// �����ִ� dto�� �־���.
		
		if(cnt>0) {  //������� DAO�� �˰��ֱ� ������ ������. DAO���� ���� �Ѱܹ޾ƾ� ��.
			request.setAttribute("dto", dto);   /// session�� �ƴ϶� ���� �������ִ� JoinCon�� ����Ǿ��ִ� request�� dto
			RequestDispatcher dis = request.getRequestDispatcher("joinSuccess.jsp");     /// ���� JoinCon�� �������ִ� dto�� ������ �̵��ϴ� ��Ȱ
			dis.forward(request, response);  	/// 
		}else {
			
		}
		return null;
		
	}

}
