package su.comm.model;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;

import su.upload.model.UploadDTO;


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
	//search
	public List<commBBSDTO> bbsserch(String search){
		
		List<commBBSDTO> list= sqlMap.selectList("bbssearch", search);
		return list;
	}
	
	public int scheWrite(scheDTO dto) {
			System.out.println(dto.getStartday());
			int count =sqlMap.insert("scheWrite", dto);
			return count;
		}
	
	
	//reply
	public int reWrite(CommBBSreDTO dto){
		int count=sqlMap.insert("reWrite", dto);
		return count;
	}
	
	public List<CommBBSreDTO> reList(String commid){
		
		List<CommBBSreDTO> list=sqlMap.selectList("reList", commid);

		return list;
	}
	
	public int redel(String idx){
		int count = sqlMap.delete("redel", idx);
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
	
	public int bbsdel(String idx){
		int count = sqlMap.delete("commbbsdel", idx);
		return count;
	}
	
	public int bbsupdate(String idx){
		System.out.println(idx);
		int count = sqlMap.update("bbsupdate", idx);
		return count;		
	}
	
	public int bbsupdate2(String idx){
		System.out.println(idx);
		int count = sqlMap.update("bbsupdate2", idx);
		return count;		
	}
	
	public int upload(UploadDTO dto) {
		
		int count=sqlMap.insert("imguploadcomm",dto);
		return count;					
	}
	
	
}
	
	
