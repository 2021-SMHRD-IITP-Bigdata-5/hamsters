package front.FrontController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inter.Command;

@WebServlet("*.do")
public class newFrontcon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println(uri);
		String path = request.getContextPath();
		System.out.println(path);
		String command = uri.substring(path.length()+1);
		System.out.println("요청기능 : " + command);
		
		Command com = null;
		String nextpage = null;
		
		if(command.equals("JoinCon.do")) {
			com = new service.Service.JoinService();
			com.execute(request, response);
		
		}
	}
}
