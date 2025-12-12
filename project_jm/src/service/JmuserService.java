package service;

import vo.JmuserVO;

public interface JmuserService {
	public int validateId(String jmuser_id);
	public int signup(JmuserVO juvo);
}
