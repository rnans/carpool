package su.paylist.model;

import java.util.List;

import su.pool.model.PoolDTO;

public interface PayListDAO {
	public int payEnrollList(PayListDTO plistDto);
	public List<PayListDTO> payAllList(int cp,int ls);
	public int paylisttotalCnt();
	public PoolDTO payInfo(String idx);
}
