package dao;

import org.apache.ibatis.session.SqlSession;

import mybatis.config.DBService;
import vo.JmuserVO;

public class JmuserDaoImpl implements JmuserDao{
	// Dao 객체 생성
	private static JmuserDaoImpl instance = null;
	private JmuserDaoImpl() {}
	public static JmuserDaoImpl getInstance() {
		if(instance == null) {
			instance = new JmuserDaoImpl();
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
	// 아이디 중복 확인
	@Override
	public int validateId(String jmuser_id) {
		return getSqlSession().selectOne("validate_id", jmuser_id);
	}
	// 회원가입
	@Override
	public int signup(JmuserVO juvo) {
		int result = getSqlSession().insert("signup", juvo);
		if(result > 0) {
			getSqlSession().commit();
		}
		return result;
	}
	// 로그인
	@Override
	public JmuserVO login(JmuserVO juvo) {
		return getSqlSession().selectOne("login", juvo);
	}
}
