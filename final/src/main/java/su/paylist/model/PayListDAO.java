package su.paylist.model;

import java.util.List;

public interface PayListDAO {
	public int payEnrollList(PayListDTO plDto);
	public List<PayListDTO> payAllList(int cp,int ls);
	 public int paylisttotalCnt();
}
