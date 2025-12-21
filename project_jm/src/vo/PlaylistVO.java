package vo;

public class PlaylistVO {
	private int jmuser_idx;
	private int song_number;
	
	public PlaylistVO() {}
	public PlaylistVO(int jmuser_idx, int song_number) {
		super();
		this.jmuser_idx = jmuser_idx;
		this.song_number = song_number;
	}
	public int getJmuser_idx() {
		return jmuser_idx;
	}
	public void setJmuser_idx(int jmuser_idx) {
		this.jmuser_idx = jmuser_idx;
	}
	public int getSong_number() {
		return song_number;
	}
	public void setSong_number(int song_number) {
		this.song_number = song_number;
	}
	
}
