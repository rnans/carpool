package su.message.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class MessageDAOImple implements MessageDAO {
	private SqlSessionTemplate sqlMap;

	public MessageDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	public int messageSend(MessageDTO dto){
		int count=sqlMap.insert("messageSend", dto);
		return count;
	}
	public List<MessageDTO> messageShow(int cp, int ls,String sid){
		 int startnum=(cp-1)*ls+1;
		 int endnum=cp*ls;
	
		 Map map=new HashMap();
		 map.put("startnum", startnum);
		 map.put("endnum", endnum);
		 map.put("sid", sid);
		List<MessageDTO> list=sqlMap.selectList("messageShow", map);
		return list;
	}
	public int messageTotalCnt(String userid){
		 int count=sqlMap.selectOne("messageTotalCnt",userid);
			return count;
	 }
	public List<MessageDTO> messageContent(int idx){
		List<MessageDTO> list=sqlMap.selectList("messageContent",idx);
		return list;
	}
	public int messageRewrite(MessageDTO dto){
		int count=sqlMap.update("messageRewrite", dto);
		return count;
	}
	public int messageDel(int idx){
		int count=sqlMap.delete("messageDel", idx);
		return count;
	}
	public int messageReading(int idx){
		int count=sqlMap.update("messageReading", idx);
	    return count;
	}
	public int messageNumber(String sid){
		int messagenumber=sqlMap.selectOne("messageNumber", sid);
		return messagenumber;
				
	}
	public MessageDTO mContent(int idx) {
		
		MessageDTO mDto = sqlMap.selectOne("mContent", idx);
		return mDto;
	}
	public int messageAllDel(String userid) {
		
		int count = sqlMap.delete("messageAllDel", userid);
		return count;
	}
	public int noReadDel(String userid) {
		
		int count = sqlMap.delete("noReadDel",userid);
		return count;
	}
	
	public MessageDTO messageInfo(int idx) {
		MessageDTO mDto = sqlMap.selectOne("messageInfo",idx);
		return mDto;
	}
}

	

