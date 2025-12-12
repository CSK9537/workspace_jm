package vo;

public class JmuserVO {
	private int jmuser_idx;
	private String jmuser_id;
	private String jmuser_pw;
	private String jmuser_name;
	private String jmuser_nickname;
	private String jmuser_birth;
	private String jmuser_gender;
	private String jmuser_tel;
	private String jmuser_email;
	private String jmuser_addr;
	private String jmuser_favorite;
	
	public JmuserVO() {}
	public JmuserVO(int jmuser_idx, String jmuser_id, String jmuser_pw, String jmuser_name, String jmuser_nickname,
			String jmuser_birth, String jmuser_gender, String jmuser_tel, String jmuser_email, String jmuser_addr,
			String jmuser_favorite) {
		super();
		this.jmuser_idx = jmuser_idx;
		this.jmuser_id = jmuser_id;
		this.jmuser_pw = jmuser_pw;
		this.jmuser_name = jmuser_name;
		this.jmuser_nickname = jmuser_nickname;
		this.jmuser_birth = jmuser_birth;
		this.jmuser_gender = jmuser_gender;
		this.jmuser_tel = jmuser_tel;
		this.jmuser_email = jmuser_email;
		this.jmuser_addr = jmuser_addr;
		this.jmuser_favorite = jmuser_favorite;
	}
	public int getJmuser_idx() {
		return jmuser_idx;
	}
	public void setJmuser_idx(int jmuser_idx) {
		this.jmuser_idx = jmuser_idx;
	}
	public String getJmuser_id() {
		return jmuser_id;
	}
	public void setJmuser_id(String jmuser_id) {
		this.jmuser_id = jmuser_id;
	}
	public String getJmuser_pw() {
		return jmuser_pw;
	}
	public void setJmuser_pw(String jmuser_pw) {
		this.jmuser_pw = jmuser_pw;
	}
	public String getJmuser_name() {
		return jmuser_name;
	}
	public void setJmuser_name(String jmuser_name) {
		this.jmuser_name = jmuser_name;
	}
	public String getJmuser_nickname() {
		return jmuser_nickname;
	}
	public void setJmuser_nickname(String jmuser_nickname) {
		this.jmuser_nickname = jmuser_nickname;
	}
	public String getJmuser_birth() {
		return jmuser_birth;
	}
	public void setJmuser_birth(String jmuser_birth) {
		this.jmuser_birth = jmuser_birth;
	}
	public String getJmuser_gender() {
		return jmuser_gender;
	}
	public void setJmuser_gender(String jmuser_gender) {
		this.jmuser_gender = jmuser_gender;
	}
	public String getJmuser_tel() {
		return jmuser_tel;
	}
	public void setJmuser_tel(String jmuser_tel) {
		this.jmuser_tel = jmuser_tel;
	}
	public String getJmuser_email() {
		return jmuser_email;
	}
	public void setJmuser_email(String jmuser_email) {
		this.jmuser_email = jmuser_email;
	}
	public String getJmuser_addr() {
		return jmuser_addr;
	}
	public void setJmuser_addr(String jmuser_addr) {
		this.jmuser_addr = jmuser_addr;
	}
	public String getJmuser_favorite() {
		return jmuser_favorite;
	}
	public void setJmuser_favorite(String jmuser_favorite) {
		this.jmuser_favorite = jmuser_favorite;
	}
	
}