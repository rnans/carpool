package su.pay.model;

import java.util.List;

import su.pay.model.PayDTO;
import su.pool.model.PoolDTO;

public interface PayDAO {
	public List<PayDTO> payInfo(PayDTO pDTO);
	public int cardEnroll(PayDTO pDTO);
	public List<PayDTO> payFinish(String cardId);
	//public List<PoolDTO> payInfoList(int idx);
}
