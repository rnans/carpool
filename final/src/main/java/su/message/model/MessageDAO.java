package su.message.model;

import java.util.List;

public interface MessageDAO {

	public int messageSend(MessageDTO dto);
	public List<MessageDTO> messageShow(int cp, int ls,String sid);
	public int messageTotalCnt();
	public List<MessageDTO> messageContent(int idx);
	public int messageRewrite(MessageDTO dto);
	public int messageDel(int idx);
	public int messageReading(int idx);
	public int messageNumber(String sid);
}
