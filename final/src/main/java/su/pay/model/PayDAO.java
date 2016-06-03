package su.pay.model;

import java.util.List;

import su.pay.model.PayDTO;

public interface PayDAO {
	public List<PayDTO> payInfo(PayDTO pDTO);
	public int cardEnroll(PayDTO pDTO);
	public List<PayDTO> payFinish(String cardId);
}
