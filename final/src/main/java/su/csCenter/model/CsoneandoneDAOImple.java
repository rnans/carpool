package su.csCenter.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class CsoneandoneDAOImple implements CsoneandoneDAO {
	
	private SqlSessionTemplate sqlMap;	
	//생성자 방식

	public CsoneandoneDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	public List<CsoneandoneDTO> oneandoneList(int cp,int ls){
		int startnum=(cp-1)*ls+1;
		int endnum=cp*ls;
		Map map=new HashMap();
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		List<CsoneandoneDTO> list=
				sqlMap.selectList("oneandoneList",map);
				return list;
	}
	 public int oneandoneTotalCnt(){
		 int count=sqlMap.selectOne("totalCnt2");
			return count;
	 }
	}


