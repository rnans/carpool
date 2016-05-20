package su.comm.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class commDAOImple implements commDAO {
	
	
	private SqlSessionTemplate sqlMap;	
	private int arr[];

	public commDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public int commWrite(commBBSDTO dto) {
		
		int count =sqlMap.insert("commWrite",dto);
		return count;
	}
	
	public List<commBBSDTO> bbsList(){
		
		List<commBBSDTO> list=sqlMap.selectList("bbsList");		
		return list;
	}

}
