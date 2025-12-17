package vo;

public class AlbumVO {
	private int album_number;
	private String album_name;
	private String singer;
	private String release_date;
	
	public AlbumVO() {}
	public AlbumVO(int album_number, String album_name, String singer, String release_date) {
		super();
		this.album_number = album_number;
		this.album_name = album_name;
		this.singer = singer;
		this.release_date = release_date;
	}
	public int getAlbum_number() {
		return album_number;
	}
	public void setAlbum_number(int album_number) {
		this.album_number = album_number;
	}
	public String getAlbum_name() {
		return album_name;
	}
	public void setAlbum_name(String album_name) {
		this.album_name = album_name;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getRelease_date() {
		return release_date;
	}
	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}
	
}
