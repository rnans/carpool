package su.csCenter.model;

import java.util.List;

public interface CsQnaDAO {

	public List<CsQnaDTO> qnaList(int cp,int ls);
	 public int qnaTotalCnt();
	 public int qnaAdd(CsQnaDTO dto);
	  public int qnaUpdate(CsQnaDTO dto);
	  public List<CsQnaDTO> qnaContent(int idx);
	  public int qnaDelete(int idx);
}
