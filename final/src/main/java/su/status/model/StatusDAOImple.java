package su.status.model;

import org.mybatis.spring.SqlSessionTemplate;

public class StatusDAOImple implements StatusDAO {

	private SqlSessionTemplate sqlMap;
	
	public StatusDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public int loginStatus(StatusDTO sDTO) {
		
		int count = sqlMap.insert("loginStatus",sDTO);
		
		return count;
	}
	
	public int loginDel(String userid) {
		
		int count = sqlMap.delete("loginDel",userid);
		return count;
	}
	
	public int numStatus() {
		int count = sqlMap.selectOne("numStatus");
		return count;
	}
}
