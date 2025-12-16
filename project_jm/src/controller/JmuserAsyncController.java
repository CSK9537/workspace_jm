package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.fasterxml.jackson.databind.ObjectMapper;

import service.JmuserService;
import service.JmuserServiceImpl;
import vo.JmuserVO;

@WebServlet("/JmuserAsyncController")
public class JmuserAsyncController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JmuserAsyncController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		//  cmd를 String으로 저장
		String cmd = request.getParameter("cmd");
		
		// 비동기 처리
		ObjectMapper objectMapper = null; // json과 java 객체들을 변환할 때 사용
		String jsonString = null; // json으로 직렬화된 데이터를 담는 용도
		PrintWriter out = response.getWriter(); // 응답 객체
		JSONObject obj = new JSONObject(); // 응답 객체에 보내줄 객체
		
		StringBuilder sb = new StringBuilder(); // json 데이터를 저장하기 위한 객체
		BufferedReader reader = request.getReader(); // json 데이터가 들어온 객체
		String line;
		
		// 1. json 데이터를 StringBuilder에 저장
		while((line = reader.readLine()) != null) {
			sb.append(line);
		}
		// 데이터는 sb에 담겨진 상태이기 때문에 검증은 sb.toString()으로 문자열 출력
		
		// 2. json 데이터 자바 객체로 저장
		if(!sb.toString().isEmpty()) {
			try {
				obj = (JSONObject)new JSONParser().parse(sb.toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		
		if(cmd == null) {
			// json으로 들어오는 cmd를 저장하기 위한 방식
			cmd = (String)obj.get("cmd");
		}
		
		// 세션 객체
		HttpSession session = request.getSession();
		// VO 객체
		JmuserVO juvo = null;
		// 서비스 객체
		JmuserService juservice = new JmuserServiceImpl();
		
		switch (cmd) {
		// 1. 아이디 중복 확인
		case "validateId":
			String jmuser_id = request.getParameter("jmuser_id");
			
			obj.clear();
			
			obj.put("result", juservice.validateId(jmuser_id));
			
			break;
			
		// 2. 회원가입
		case "signup":
			juvo = new JmuserVO();
			juvo.setJmuser_id((String)obj.get("jmuser_id"));
			juvo.setJmuser_pw((String)obj.get("jmuser_pw"));
			juvo.setJmuser_name((String)obj.get("jmuser_name"));
			// 미선택 사항은 "";
			juvo.setJmuser_nickname((String)obj.get("jmuser_nickname"));
			juvo.setJmuser_birth((String)obj.get("jmuser_birth"));
			// 성별 미선택은 null
			if((String)obj.get("jmuser_gender") == null) {
				juvo.setJmuser_gender("");
			}else {
				juvo.setJmuser_gender((String)obj.get("jmuser_gender"));
			}
			juvo.setJmuser_tel((String)obj.get("jmuser_tel"));
			juvo.setJmuser_email((String)obj.get("jmuser_email"));
			juvo.setJmuser_addr((String)obj.get("jmuser_addr"));
			
			obj.clear();
			
			obj.put("result", juservice.signup(juvo));
			
			break;
			
		// 3. 로그인
		case "login":
			juvo = new JmuserVO();
			juvo.setJmuser_id((String)obj.get("jmuser_id"));
			juvo.setJmuser_pw((String)obj.get("jmuser_pw"));
			
			JmuserVO returnVO = juservice.login(juvo);
			
			obj.clear();
			
			if(returnVO != null) {
				session.setAttribute("jmuser", returnVO);
				obj.put("result", "success");
			}else {
				obj.put("result", "fail");
			}
			
			break;
			
		// 4. 로그아웃
		case "logout":
			JmuserVO sessionVO = (JmuserVO)session.getAttribute("jmuser");
			if(sessionVO != null) {
				session.removeAttribute("jmuser");
				response.sendRedirect("JmMainController?cmd=mainPage");
			}
			
			break;
		
		// 4. 회원 정보 수정
		case "update":
			juvo = new JmuserVO();
//			juvo.setJmuser_idx();
			juvo.setJmuser_id((String)obj.get("jmuser_id"));
			juvo.setJmuser_pw((String)obj.get("jmuser_pw"));
			juvo.setJmuser_name((String)obj.get("jmuser_name"));
			// 미선택 사항은 "";
			juvo.setJmuser_nickname((String)obj.get("jmuser_nickname"));
			juvo.setJmuser_birth((String)obj.get("jmuser_birth"));
			// 성별 미선택은 null
			if((String)obj.get("jmuser_gender") == null) {
				juvo.setJmuser_gender("");
			}else {
				juvo.setJmuser_gender((String)obj.get("jmuser_gender"));
			}
			juvo.setJmuser_tel((String)obj.get("jmuser_tel"));
			juvo.setJmuser_email((String)obj.get("jmuser_email"));
			juvo.setJmuser_addr((String)obj.get("jmuser_addr"));
			
			obj.clear();
			
			obj.put("result", juservice.signup(juvo));
			
			break;

		}
		// js에 전달
		out.print(obj);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
