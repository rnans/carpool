package su.adminMember.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import su.upload.model.UploadDTO;

public class AdminCarInfoDAOImple implements AdminCarInfoDAO {
	
	private SqlSessionTemplate sqlMap;

	public AdminCarInfoDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	/**차 정보 목록 받아오기*/
	public List<AdminCarInfoDTO> memberCarInfo(int cp, int ls) {
		int startnum = (cp-1)*ls+1;
		int endnum = cp*ls;
		Map map = new HashMap();
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		
		List<AdminCarInfoDTO> list = sqlMap.selectList("memberCarInfo", map);
		return list;
	}
	
	/**페이징*/
	public int carInfoTotalCnt() {
		int count = sqlMap.selectOne("carInfoTotalCnt");
		return count;
	}
	
	/**등록된 차 삭제*/
	public int memberCarDel(int idx) {
		
		int count = sqlMap.delete("memberCarDel", idx);
		return count;
	}
	
	/**등록된 차 인증*/
	public int memberCarOk(int idx, String confirm) {
		
		Map map = new HashMap();
		map.put("idx", idx);
		map.put("confirm", confirm);
		
		int count = sqlMap.update("memberCarOk", map);
		return count;
	}
	
	/**차인증 사진보기*/
	public List<UploadDTO> memberCarPhoto(String id) {
		
		List<UploadDTO> list= sqlMap.selectList("memberCarPhoto", id);
		return list;
	}

}
