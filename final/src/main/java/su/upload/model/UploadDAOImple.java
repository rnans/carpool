package su.upload.model;

import org.mybatis.spring.SqlSessionTemplate;

public class UploadDAOImple implements UploadDAO {

	private SqlSessionTemplate sqlMap;
	
	public UploadDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public int upload(UploadDTO dto) {
		
		int count=sqlMap.insert("imgupload",dto);
		return count;					
	}

}
