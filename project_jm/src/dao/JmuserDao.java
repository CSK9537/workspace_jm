package dao;

import vo.JmuserVO;

public interface JmuserDao {
	// 아이디 중복 확인
	public int validateId(String jmuser_id);
	// 회원가입
	public int signup(JmuserVO juvo);
	// 로그인
	public JmuserVO login(JmuserVO juvo);
}
