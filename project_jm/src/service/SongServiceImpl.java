package service;

import java.util.List;

import dao.SongDao;
import dao.SongDaoImpl;
import vo.SongVO;

public class SongServiceImpl implements SongService{
	// Dao 객체 가져오기
	private SongDao songdao = SongDaoImpl.getInstance();
	// 오버라이드
	@Override
	public List<SongVO> chart() {
		return songdao.chart();
	}
}