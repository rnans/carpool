package su.noti.model;

import org.mybatis.spring.SqlSessionTemplate;

public class NotiDAOImple implements NotiDAO {


	private SqlSessionTemplate sqlMap;

	public NotiDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
}
