package su.csCenter.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class CsQnaDAOImple implements CsQnaDAO {

	private SqlSessionTemplate sqlMap;	
	//생성자 방식

	public CsQnaDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public List<CsQnaDTO> qnaList(int cp,int ls){
	int startnum=(cp-1)*ls+1;
			int endnum=cp*ls;
			Map map=new HashMap();
			map.put("startnum", startnum);
			map.put("endnum", endnum);
			List<CsQnaDTO> list=
					sqlMap.selectList("qnaList",map);
					return list;
    }
	 public int qnaTotalCnt(){
		 int count=sqlMap.selectOne("sql.CsCenter.totalCnt3");
			return count;
	 }
	 public int qnaAdd(CsQnaDTO dto){
		 
			  int count=sqlMap.update("qnaAdd", dto);
			  return count;
	 }
	 public int qnaUpdate(CsQnaDTO dto){
		  int count=sqlMap.update("qnaUpdate",dto);
		   return count;
	  }
		public List<CsQnaDTO> qnaContent(int idx){
			 List<CsQnaDTO> list=
					   sqlMap.selectList("qnaContent",idx);
			   return list;
		}
		  public int qnaDelete(int idx){
				int count=sqlMap.delete("qnaDelete", idx);
				return count;
		  }
}
