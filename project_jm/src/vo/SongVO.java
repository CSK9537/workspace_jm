package vo;

public class SongVO {
	private int song_number;
	private String song_name;
	private String singer;
	private String album_name;
	private String link;
	private int playcount;
	
	public SongVO() {}
	public SongVO(int song_number, String song_name, String singer, String album_name, String link, int playcount) {
		super();
		this.song_number = song_number;
		this.song_name = song_name;
		this.singer = singer;
		this.album_name = album_name;
		this.link = link;
		this.playcount = playcount;
	}
	public int getSong_number() {
		return song_number;
	}
	public void setSong_number(int song_number) {
		this.song_number = song_number;
	}
	public String getSong_name() {
		return song_name;
	}
	public void setSong_name(String song_name) {
		this.song_name = song_name;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getAlbum_name() {
		return album_name;
	}
	public void setAlbum_name(String album_name) {
		this.album_name = album_name;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public int getPlaycount() {
		return playcount;
	}
	public void setPlaycount(int playcount) {
		this.playcount = playcount;
	}
	
}