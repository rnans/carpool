package su.csCenter.model;

import java.util.List;

public interface CsuseGuideDAO {

	public List<CsuseGuideDTO> useguideList(int cp,int ls);
	 public int useguideTotalCnt();
	 public int useguideAdd(CsuseGuideDTO dto);
	  public int useguideUpdate(CsuseGuideDTO dto);
	  public List<CsuseGuideDTO> useguideContent(int idx);
	  public int useguideDelete(int idx);
}
