package su.csCenter.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;

public class CsoneandoneDAOImple implements CsoneandoneDAO {
	
	private SqlSessionTemplate sqlMap;	
	//생성자 방식

	public CsoneandoneDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	public List<CsoneandoneDTO> oneandoneList(int cp,int ls ,String id){
		
		int startnum=(cp-1)*ls+1;
		int endnum=cp*ls;
		Map map=new HashMap();
		map.put("id", id);
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		List<CsoneandoneDTO> list=
				sqlMap.selectList("oneandoneList",map);
				return list;
	}
	 public int oneandoneTotalCnt(String sid){
		 int count=sqlMap.selectOne("sql.CsCenter.totalCnt2",sid);
			return count;
	 }
		public List<CsoneandoneDTO> oneandoneContent(int idx){
			 List<CsoneandoneDTO> list=
					   sqlMap.selectList("oneandoneContent",idx);
			   return list;
		}
		 public int oneandoneAdd(CsoneandoneDTO dto){
			 int count=sqlMap.insert("oneandoneAdd", dto);
			 return count;	 		
		 }
		 public List<CsoneandoneDTO> adminoneandoneList(int cp,int ls){
				
				int startnum=(cp-1)*ls+1;
				int endnum=cp*ls;
				Map map=new HashMap();
			
				map.put("startnum", startnum);
				map.put("endnum", endnum);
				List<CsoneandoneDTO> list=
						sqlMap.selectList("adminoneandoneList",map);
						return list;
			}
		 public int adminoneandoneTotalCnt(){
			 int count=sqlMap.selectOne("adminoneandonetotalCnt");
				return count;
		 }
		 public int oneandoneAnswer(CsoneandoneDTO dto){
			 int count=sqlMap.update("oneandoneAnswer",dto);
			   return count;
		  }
		 public int oneandoneDelete(int idx){
				int count=sqlMap.delete("oneandoneDelete", idx);
				return count;
		  }
		 public List<CsoneandoneDTO> oneandoneTypeSearch(int cp,int ls,String search){
				
				int startnum=(cp-1)*ls+1;
				int endnum=cp*ls;
				Map map=new HashMap();
				map.put("search", search);
				map.put("startnum", startnum);
				map.put("endnum", endnum);
				List<CsoneandoneDTO> list=
						sqlMap.selectList("oneandoneTypeSearch",map);
						return list;
			}
		 public List<CsoneandoneDTO> oneandoneWriterSearch(int cp,int ls,String search){
			 int startnum=(cp-1)*ls+1;
				int endnum=cp*ls;
				Map map=new HashMap();
				map.put("search", search);
				map.put("startnum", startnum);
				map.put("endnum", endnum);
				List<CsoneandoneDTO> list=
						sqlMap.selectList("oneandoneWriterSearch",map);
						return list;
		 }
		 public List<CsoneandoneDTO> oneandoneStateSearch(int cp,int ls,String search){
			 int startnum=(cp-1)*ls+1;
				int endnum=cp*ls;
				Map map=new HashMap();
				map.put("search", search);
				map.put("startnum", startnum);
				map.put("endnum", endnum);
				List<CsoneandoneDTO> list=
						sqlMap.selectList("oneandoneStateSearch",map);
						return list;
		 }
	}


