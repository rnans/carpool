package su.csCenter.model;

import java.util.List;

import javax.servlet.http.HttpSession;

public interface CsoneandoneDAO {

	public List<CsoneandoneDTO> oneandoneList(int cp,int ls,String id);
	 public int oneandoneTotalCnt();
	 public List<CsoneandoneDTO> oneandoneContent(int idx);
	 public int oneandoneAdd(CsoneandoneDTO dto);
}
