package su.adminPool.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class AdminUserPoolDAOImple implements AdminUserPoolDAO {

	private SqlSessionTemplate sqlMap;
	
	public AdminUserPoolDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	/**유저 등록카풀 전체보기*/
	public List<AdminUserPoolDTO> userPoolList(int cp, int ls) {
		
		int startnum=(cp-1)*ls+1;
		int endnum=cp*ls;
		Map map=new HashMap();
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		
		List<AdminUserPoolDTO> list = sqlMap.selectList("userPoolList", map);
		return list;
	}
	
	/**페이징*/
	public int userPoolTotalCnt() {
		int count = sqlMap.selectOne("userTotalCnt");
		return count;
	}
	
	public int driverPoolTotalCnt(){
		int count = sqlMap.selectOne("driverTotalCnt");
		return count;
	}
	
	/**삭제*/
	public int userPoolDel(int idx) {
		
		int count = sqlMap.delete("adminPoolDel", idx);
		return count;
	}
	
	/**드라이버 등록카풀 전체보기*/
	public List<AdminUserPoolDTO> driverPoolList(int cp, int ls){
		
		int startnum=(cp-1)*ls+1;
		int endnum=cp*ls;
		Map map=new HashMap();
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		
		List<AdminUserPoolDTO> list = sqlMap.selectList("driverPoolList", map);
		return list;
	}
	public String newPoolDate(int idx){
		String date=sqlMap.selectOne("newPoolDate",idx);
		return date;
	}
	public String newPoolName(int idx){
		String name=sqlMap.selectOne("newPoolName", idx);
		return name;
	}
	public String newPoolType(int idx){
		String type=sqlMap.selectOne("newPoolType", idx);
		return type;
	}
	public String newPoolDate2(int idx){
		String date=sqlMap.selectOne("newPoolDate2",idx);
		return date;
	}
	public String newPoolName2(int idx){
		String name=sqlMap.selectOne("newPoolName2", idx);
		return name;
	}
	public String newPoolType2(int idx){
		String type=sqlMap.selectOne("newPoolType2", idx);
		return type;
	}
	public int newPoolIdx(){
		int idx=sqlMap.selectOne("newPoolIdx");
		return idx;
	}
	public int new2PoolIdx(){
		int idx=sqlMap.selectOne("new2PoolIdx");
		return idx;
	}
	public int poolCount(){
		int count=sqlMap.selectOne("poolCount");
		return count;
	}
	

}
