package su.adminComm.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import su.comm.model.carpoolinfoDTO;

public class AdminCommDAOImple implements AdminCommDAO {

	private SqlSessionTemplate sqlMap;
	
	public AdminCommDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}


	/**커뮤니티 목록*/
	public List<carpoolinfoDTO> commList(int cp, int ls) {
		
		int startnum = (cp-1)*ls+1;
		int endnum = cp*ls;
		Map map = new HashMap();
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		
		List<carpoolinfoDTO> list = sqlMap.selectList("memberCommList", map);
		return list;
	}
	
	/**커뮤니티 페이징*/
	public int commTotalCnt() {
		
		int count = sqlMap.selectOne("commTotalCnt");
		return count;
		
	}

}
