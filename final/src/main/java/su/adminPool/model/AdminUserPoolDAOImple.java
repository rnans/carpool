package su.adminPool.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class AdminUserPoolDAOImple implements AdminUserPoolDAO {

	private SqlSessionTemplate sqlMap;
	
	public AdminUserPoolDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}


	public List<AdminUserPoolDTO> userPoolList() {
		
		return null;
	}

}
