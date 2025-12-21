package dao;

import java.util.List;

import vo.AlbumVO;
import vo.JmuserVO;
import vo.PlaylistVO;
import vo.SingerVO;
import vo.SongVO;

public interface MusicDao {
	public void randomcount();
	public List<SongVO> chart_10();
	public List<SongVO> chart_100();
	public SongVO songinfo_1(int song_number);
	public AlbumVO songinfo_2(int song_number);
	public SingerVO singerinfo(String singer);
	public AlbumVO albuminfo(AlbumVO albumvo);
	public List<SongVO> searchSinger(String q);
	public List<SongVO> searchSong(String q);
	public List<SongVO> searchAlbum(String q);
	public List<Integer> getPlaylist(int jmuser_idx);
	public void addPlaylist(PlaylistVO pvo);
	public void removePlaylist(PlaylistVO pvo);
	public void updateFavorite(JmuserVO sessionVO);
}
