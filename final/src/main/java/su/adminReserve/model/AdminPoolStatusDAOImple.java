package su.adminReserve.model;

import org.mybatis.spring.SqlSessionTemplate;

public class AdminPoolStatusDAOImple implements AdminPoolStatusDAO {

	private SqlSessionTemplate sqlMap;

	public AdminPoolStatusDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	

}
