package su.paylist.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class PayListDAOImple implements PayListDAO {

	private SqlSessionTemplate sqlMap;
	
	public PayListDAOImple(SqlSessionTemplate sqlMap){
		super();
		this.sqlMap = sqlMap;
	}
	
	public int payEnrollList(PayListDTO plDto) {
		int count = sqlMap.insert("payAllList", plDto);
		return count;
	}
	public List<PayListDTO> payAllList(int cp,int ls){
		int startnum=(cp-1)*ls+1;
		int endnum=cp*ls;
		Map map=new HashMap();
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		List<PayListDTO> list=sqlMap.selectList("adminPayList", map);
		return list;
	}
	 public int paylisttotalCnt(){
		 int count=sqlMap.selectOne("paylisttotalCnt");
		 return count;
	 }
}
