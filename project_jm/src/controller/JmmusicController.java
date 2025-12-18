package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

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

import service.MusicService;
import service.MusicServiceImpl;
import vo.AlbumVO;
import vo.JmuserVO;
import vo.SingerVO;
import vo.SongVO;

@WebServlet("/JmmusicController")
public class JmmusicController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JmmusicController() {
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
		
		// 동기, 비동기 구분
		boolean isAsync = false;
		// 세션 객체
		HttpSession session = request.getSession();
		// 경로
		String path = "";
		// VO 객체
		SongVO songvo = null;
		SingerVO singervo = null;
		AlbumVO albumvo = null;
		// List 객체
		List<SongVO> list1 = null;
		List<SongVO> list2 = null;
		List<SongVO> list3 = null;
		// 서비스 객체
		MusicService mservice = new MusicServiceImpl();
		// 컬럼 초기화
		int song_number = 0;
		String singer = "";
		
		switch (cmd) {
		case "main":
			mservice.randomcount();
			list1 = mservice.chart_10();
			request.setAttribute("list", list1);
			path = "jm/mainPage.jsp";
			
			break;
			
		case "chart":
			list1 = mservice.chart_100();
			request.setAttribute("list", list1);
			path = "jm/chartPage.jsp";
			
			break;
			
		case "songInfo":
			song_number = Integer.parseInt(request.getParameter("song_number"));
			songvo = mservice.songinfo_1(song_number);
			albumvo = mservice.songinfo_2(song_number);
			request.setAttribute("songvo", songvo);
			request.setAttribute("albumvo", albumvo);
			path = "jm/songInfoPage.jsp";
			
			break;
			
		case "singerInfo":
			singer = request.getParameter("singer");
			singervo = mservice.singerinfo(singer);
			request.setAttribute("singervo", singervo);
			path = "jm/singerInfoPage.jsp";
			
			break;
			
		case "albumInfo":
			albumvo = new AlbumVO();
			albumvo.setSinger(request.getParameter("singer"));
			albumvo.setAlbum_name(request.getParameter("album_name"));
			AlbumVO avo = mservice.albuminfo(albumvo);
			request.setAttribute("avo", avo);
			path = "jm/albumInfoPage.jsp";
			
			break;
			
		case "search":
			String q = request.getParameter("q");
			list1 = mservice.searchSinger(q);
			list2 = mservice.searchSong(q);
			list3 = mservice.searchAlbum(q);
			request.setAttribute("q", q);
			request.setAttribute("list1", list1);
			request.setAttribute("list2", list2);
			request.setAttribute("list3", list3);
			path = "jm/searchPage.jsp";
			
			break;
			
		case "getFavorite":
			JmuserVO sessionVO1 = (JmuserVO)session.getAttribute("jmuser");
			list1 = new ArrayList<>();
			if(sessionVO1 != null) {
				String favSt = sessionVO1.getJmuser_favorite();
				if(favSt != null) {
					String[] fav = favSt.split("n");
					for (int i = 0; i < fav.length; i++) {
						list1.add(mservice.songinfo_1(Integer.parseInt(fav[i])));
					}
				}else {
					list1 = null;
				}
			}
			request.setAttribute("list", list1);
			path = "jm/favoritePage.jsp";
			
			break;
		
		case "addFavorite":
			String songnumSt1 = request.getParameter("song_number");
			JmuserVO sessionVO2 = (JmuserVO)session.getAttribute("jmuser");
			if(sessionVO2 != null) {
				String favSt = sessionVO2.getJmuser_favorite();
				if(favSt == null) {
					favSt = "";
				}
				favSt += songnumSt1 + "n";
				sessionVO2.setJmuser_favorite(favSt);
				mservice.updateFavorite(sessionVO2);
				obj.clear();
				obj.put("result", "success");
			}else {
				obj.clear();
				obj.put("result", "fail");
			}
			
			isAsync = true;
			
			break;
		
		case "removeFavorite":
			String songnumSt2 = request.getParameter("song_number");
			JmuserVO sessionVO3 = (JmuserVO)session.getAttribute("jmuser");
			if(sessionVO3 != null) {
				String favSt = sessionVO3.getJmuser_favorite();
				if(favSt != null) {
					List<Integer> songnums = new ArrayList<Integer>();
					String[] fav = favSt.split("n");
					for (int i = 0; i < fav.length; i++) {
						songnums.add(Integer.parseInt(fav[i]));
					}
					songnums.remove(Integer.valueOf(songnumSt2));
					favSt = "";
					for (int i : songnums) {
						favSt += i + "n";
					}
				}else {
					favSt = "";
				}
				sessionVO3.setJmuser_favorite(favSt);
				mservice.updateFavorite(sessionVO3);
				obj.clear();
				obj.put("result", "success");
			}else {
				obj.clear();
				obj.put("result", "fail");
			}
			
			isAsync = true;
			
			break;
		}
		
		if(isAsync) {
			// js에 전달
			out.print(obj);
		}else {
			request.getRequestDispatcher(path).forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
