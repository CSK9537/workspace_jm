package vo;

public class SingerVO {
	private int signer_number;
	private String singer;
	private String debut_date;
	private String company;
	
	public SingerVO() {}
	public SingerVO(int signer_number, String singer, String debut_date, String company) {
		super();
		this.signer_number = signer_number;
		this.singer = singer;
		this.debut_date = debut_date;
		this.company = company;
	}
	public int getSigner_number() {
		return signer_number;
	}
	public void setSigner_number(int signer_number) {
		this.signer_number = signer_number;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getDebut_date() {
		return debut_date;
	}
	public void setDebut_date(String debut_date) {
		this.debut_date = debut_date;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
}
