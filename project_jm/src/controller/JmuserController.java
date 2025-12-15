package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/JmuserController")
public class JmuserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JmuserController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		// cmd
		String cmd = request.getParameter("cmd");
		if(cmd == null) {
			cmd = "mainPage";
		}
		
		String path = "";

		switch (cmd) {
		case "mainPage":
			path = "jm/mainPage.jsp";
			break;
		case "signupPage":
			path = "jm/signupPage.jsp";
			break;
		case "loginPage":
			path = "jm/loginPage.jsp";
			break;
		case "myPage":
			path = "jm/myPage.jsp";
			break;
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
