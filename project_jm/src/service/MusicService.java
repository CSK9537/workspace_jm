package service;

import java.util.List;

import vo.AlbumVO;
import vo.SingerVO;
import vo.SongVO;

public interface MusicService {
	public void randomcount();
	public List<SongVO> chart_10();
	public List<SongVO> chart_100();
	public SongVO songinfo_1(int song_number);
	public AlbumVO songinfo_2(int song_number);
	public SingerVO singerinfo(String singer);
}
