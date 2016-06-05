package su.paylist.model;

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
}
