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

	//comm 글쓰기
	public int commWrite(commBBSDTO dto) {
		
		int count =sqlMap.insert("commWrite",dto);
		return count;
	}
	//글 띄우기
	public List<commBBSDTO> bbsList(){
		
		List<commBBSDTO> list=sqlMap.selectList("bbsList");		
		return list;
	}
	
	public int scheWrite(scheDTO dto) {
			System.out.println(dto.getStartday());
			int count =sqlMap.insert("scheWrite", dto);
			return count;
		}
	
	//스케쥴글 띄우기
	public List<scheDTO> scheList(){
		
		List<scheDTO> list=sqlMap.selectList("scheList");		
		return list;
	}
	
	//커뮤니티 member
	public List<carpoolinfoDTO> commMemberList(String poolname) {
		
		List<carpoolinfoDTO> list = sqlMap.selectList("commmember", poolname);
		return list;
	}
	

}
