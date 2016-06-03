package su.pay.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class PayDAOImple implements PayDAO {

	private SqlSessionTemplate sqlMap;
	
	public PayDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap=sqlMap;
	}
	
	public List<PayDTO> payInfo(PayDTO pDTO){
		
		List<PayDTO> list = sqlMap.selectList("sql.PaySql.paySql",pDTO);
		//PayDTO payDTO = (PayDTO)sqlMap.selectList("sql.PaySql.paySql",pDTO);
		return list;
	}
	
	public int cardEnroll(PayDTO pDTO) {
		
		int count = sqlMap.insert("sql.PaySql.cardEnroll",pDTO);
		return count;
	}
	
	public List<PayDTO> payFinish(String cardId){
		List<PayDTO> listp = sqlMap.selectList("payFinish",cardId);
		return listp;
	}
}