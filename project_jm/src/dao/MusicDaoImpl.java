package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mybatis.config.DBService;
import vo.AlbumVO;
import vo.SingerVO;
import vo.SongVO;

public class MusicDaoImpl implements MusicDao{
	// Dao 객체 생성
	private static MusicDaoImpl instance = null;
	private MusicDaoImpl() {}
	public static MusicDaoImpl getInstance() {
		if(instance == null) {
			instance = new MusicDaoImpl();
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
	public void randomcount() {
		int result = getSqlSession().update("randomcount");
		if(result > 0) {
			getSqlSession().commit();
		}
	}
	@Override
	public List<SongVO> chart_10() {
		return getSqlSession().selectList("chart10");
	}
	@Override
	public List<SongVO> chart_100() {
		return getSqlSession().selectList("chart100");
	}
	@Override
	public SongVO songinfo_1(int song_number) {
		return getSqlSession().selectOne("songinfo_1", song_number);
	}
	public AlbumVO songinfo_2(int song_number) {
		return getSqlSession().selectOne("songinfo_2", song_number);
	}
	@Override
	public SingerVO singerinfo(String singer) {
		return getSqlSession().selectOne("singerinfo", singer);
	}
	@Override
	public AlbumVO albuminfo(AlbumVO albumvo) {
		return getSqlSession().selectOne("albuminfo", albumvo);
	}
}
