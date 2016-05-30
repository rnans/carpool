package su.wishpool.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import su.csCenter.model.CsNoticeDTO;



public class WishpoolListDAOImple implements WishpoolListDAO {

	private SqlSessionTemplate sqlMap;
	
	public WishpoolListDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}



	public List<WishpoolListDTO> wishList(int cp, int ls) {
		int startnum=(cp-1)*ls+1; 
		int endnum=cp*ls;
		Map map=new HashMap();
		map.put("startnum",startnum);
		map.put("endnum", endnum);
		List<WishpoolListDTO> list=sqlMap.selectList("wishpoolList",map);
		return list;
	}	
	
	public int wishpoolTotalCnt() {
		int count=sqlMap.selectOne("wishpooltotalCnt");
		return count;
	}



	
	

}
