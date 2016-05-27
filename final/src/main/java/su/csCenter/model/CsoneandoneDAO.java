package su.csCenter.model;

import java.util.List;

import javax.servlet.http.HttpSession;

public interface CsoneandoneDAO {

	public List<CsoneandoneDTO> oneandoneList(int cp,int ls,String id);
	 public int oneandoneTotalCnt();
	 public List<CsoneandoneDTO> oneandoneContent(int idx);
	 public int oneandoneAdd(CsoneandoneDTO dto);
	 public List<CsoneandoneDTO> adminoneandoneList(int cp,int ls);
	 public int oneandoneAnswer(CsoneandoneDTO dto);
	 public int oneandoneDelete(int idx);
	 public List<CsoneandoneDTO> oneandoneTypeSearch(int cp,int ls,String search);
	 public List<CsoneandoneDTO> oneandoneWriterSearch(int cp,int ls,String search);
	 public List<CsoneandoneDTO> oneandoneStateSearch(int cp,int ls,String search);
	 public int adminoneandoneTotalCnt();
}
