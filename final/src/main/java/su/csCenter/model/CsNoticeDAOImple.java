package su.csCenter.model;

import org.mybatis.spring.SqlSessionTemplate;

public class CsNoticeDAOImple implements CsNoticeDAO {

	private SqlSessionTemplate sqlMap;	
	//생성자 방식
	public CsNoticeDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
}
