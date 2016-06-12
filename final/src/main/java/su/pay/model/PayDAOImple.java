package su.pay.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import su.pool.model.PoolDTO;

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
	public int paylistCount(){
		int count=sqlMap.selectOne("paylistCount");
		return count;
	}
	public int payCount(){
		int count=sqlMap.selectOne("payCount");
		return count;
	}
	public String payDate(int idx){
		String date=sqlMap.selectOne("payDate", idx);
		return date;
	}
	public int payPay(int idx){
		int pay=sqlMap.selectOne("payPay", idx);
		return pay;
	}
	/*public List<PoolDTO> payInfoList(int idx) {

		List<PoolDTO> list = sqlMap.selectList("payInfoList",idx);
		return list;
	}*/
}