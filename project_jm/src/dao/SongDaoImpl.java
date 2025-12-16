package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mybatis.config.DBService;
import vo.SongVO;

public class SongDaoImpl implements SongDao{
	// Dao 객체 생성
	private static SongDaoImpl instance = null;
	private SongDaoImpl() {}
	public static SongDaoImpl getInstance() {
		if(instance == null) {
			instance = new SongDaoImpl();
		}
		return instance;
	}
	// 필드
	private static SqlSession sqlsession = null;
	private synchronized static SqlSession getSqlSession() {
		if(sqlsession == null) {
			sqlsession = DBService.getFactory().openSession(false);
		}
		return sqlsession;
	}
	// 오버라이드
	@Override
	public List<SongVO> chart() {
		return getSqlSession().selectList("chart");
	}
	
}
