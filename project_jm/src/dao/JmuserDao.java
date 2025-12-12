package dao;

import vo.JmuserVO;

public interface JmuserDao {
	public int validateId(String jmuser_id);
	public int signup(JmuserVO juvo);
}
