package service;

import dao.JmuserDao;
import dao.JmuserDaoImpl;
import vo.JmuserVO;

public class JmuserServiceImpl implements JmuserService{
	// Dao 객체 가져오기
	private JmuserDao judao = JmuserDaoImpl.getInstance();
	// 오버라이드
	@Override
	public int validateId(String jmuser_id) {
		return judao.validateId(jmuser_id);
	}
	@Override
	public int signup(JmuserVO juvo) {
		return judao.signup(juvo);
	}
}