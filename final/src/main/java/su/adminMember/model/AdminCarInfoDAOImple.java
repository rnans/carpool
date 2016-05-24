package su.adminMember.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class AdminCarInfoDAOImple implements AdminCarInfoDAO {
	
	private SqlSessionTemplate sqlMap;

	public AdminCarInfoDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	/**차 정보 목록 받아오기*/
	public List<AdminCarInfoDTO> memberCarInfo(int cp, int ls) {
		int startnum = (cp-1)*ls+1;
		int endnum = cp*ls;
		Map map = new HashMap();
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		
		List<AdminCarInfoDTO> list = sqlMap.selectList("memberCarInfo", map);
		return list;
	}
	
	public int carInfoTotalCnt() {
		int count = sqlMap.selectOne("carInfoTotalCnt");
		return count;
	}

}
