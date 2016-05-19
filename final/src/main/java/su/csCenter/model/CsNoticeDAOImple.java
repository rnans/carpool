package su.csCenter.model;

import java.util.List;
import java.util.Map;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;

public class CsNoticeDAOImple implements CsNoticeDAO {

	private SqlSessionTemplate sqlMap;	
	//생성자 방식
	public CsNoticeDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	public List<CsNoticeDTO> noticeList(int cp,int ls){
		int startnum=(cp-1)*ls+1;
		int endnum=cp*ls;
		Map map=new HashMap();
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		List<CsNoticeDTO> list=
				sqlMap.selectList("NoticeList",map);
				return list;
	}
	 public int noticeTotalCnt(){
		 int count=sqlMap.selectOne("totalCnt");
			return count;
	 }
	public List<CsNoticeDTO> noticeContent(int idx){
		 List<CsNoticeDTO> list=
				   sqlMap.selectList("noticeContent",idx);
		   return list;
	}
	 public int noticeReadnum(int idx){
		 int count=sqlMap.update("noticereadnum", idx);
		   return count;
	 }
}
