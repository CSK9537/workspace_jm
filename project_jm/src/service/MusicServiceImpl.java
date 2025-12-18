package service;

import java.util.List;

import dao.MusicDao;
import dao.MusicDaoImpl;
import vo.AlbumVO;
import vo.JmuserVO;
import vo.SingerVO;
import vo.SongVO;

public class MusicServiceImpl implements MusicService{
	// Dao 객체 가져오기
	private MusicDao mdao = MusicDaoImpl.getInstance();
	// 오버라이드
	@Override
	public void randomcount() {
		mdao.randomcount();
	}
	@Override
	public List<SongVO> chart_10() {
		return mdao.chart_10();
	}
	@Override
	public List<SongVO> chart_100() {
		return mdao.chart_100();
	}
	@Override
	public SongVO songinfo_1(int song_number) {
		return mdao.songinfo_1(song_number);
	}
	@Override
	public AlbumVO songinfo_2(int song_number) {
		return mdao.songinfo_2(song_number);
	}
	@Override
	public SingerVO singerinfo(String singer) {
		return mdao.singerinfo(singer);
	}
	@Override
	public AlbumVO albuminfo(AlbumVO albumvo) {
		return mdao.albuminfo(albumvo);
	}
	@Override
	public List<SongVO> searchSinger(String q) {
		return mdao.searchSinger(q);
	}
	@Override
	public List<SongVO> searchSong(String q) {
		return mdao.searchSong(q);
	}
	@Override
	public List<SongVO> searchAlbum(String q) {
		return mdao.searchAlbum(q);
	}
	@Override
	public void updateFavorite(JmuserVO sessionVO) {
		mdao.updateFavorite(sessionVO);
	}
}