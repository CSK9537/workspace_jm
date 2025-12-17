package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JmMainController")
public class JmMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JmMainController() {
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
			path = "JmmusicController?cmd=main";
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
		case "chartPage":
			path = "JmmusicController?cmd=chart";
			break;
		case "songInfoPage":
			path = "JmmusicController?cmd=songInfo";
			break;
		case "singerInfoPage":
			path = "JmmusicController?cmd=singerInfo";
			break;
		case "albumInfoPage":
			path = "JmmusicController?cmd=albumInfo";
			break;
		case "searchPage":
			path = "JmmusicController?cmd=search";
			break;
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
