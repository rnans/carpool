package su.csCenter.model;

import org.mybatis.spring.SqlSessionTemplate;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

public class CsuseGuideDAOImple implements CsuseGuideDAO {

	private SqlSessionTemplate sqlMap;

	public CsuseGuideDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public List<CsuseGuideDTO> useguideList(int cp,int ls){
		int startnum=(cp-1)*ls+1;
				int endnum=cp*ls;
				Map map=new HashMap();
				map.put("startnum", startnum);
				map.put("endnum", endnum);
				List<CsuseGuideDTO> list=
						sqlMap.selectList("useguideList",map);
						return list;
	    }
		 public int useguideTotalCnt(){
			 int count=sqlMap.selectOne("sql.CsCenter.totalCnt4");
				return count;
		 }
		 public int useguideAdd(CsuseGuideDTO dto){
			 
			  int count=sqlMap.update("useguideAdd", dto);
			  return count;
	 }
		 public int useguideUpdate(CsuseGuideDTO dto){
			  int count=sqlMap.update("useguideUpdate",dto);
			   return count;
		  }
			public List<CsuseGuideDTO> useguideContent(int idx){
				 List<CsuseGuideDTO> list=
						   sqlMap.selectList("useguideContent",idx);
				   return list;
			}
			  public int useguideDelete(int idx){
					int count=sqlMap.delete("useguideDelete", idx);
					return count;
			  }
	
	
}
