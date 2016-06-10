package su.upload.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class UploadDAOImple implements UploadDAO {

	private SqlSessionTemplate sqlMap;
	
	public UploadDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public int upload(UploadDTO dto) {
		
		int count=sqlMap.insert("imguploadcomm",dto);
		return count;					
	}
	public int carupload(UploadDTO dto) {
		
		int count=sqlMap.insert("imgupload",dto);
		return count;					
	}
	 public List<UploadDTO> imgFind(String id){
		 List<UploadDTO> list=sqlMap.selectList("imgFind", id);
		 return list;
	 }
	 public int fileUpdate(UploadDTO dto){
		 int count=sqlMap.update("fileUpdate", dto);
		 return count;
	 }
	 public String filecheck(String id){
		 String check=sqlMap.selectOne("fileCheck", id);
		 return check;
	 }

}
