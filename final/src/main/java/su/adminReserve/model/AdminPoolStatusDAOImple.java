package su.adminReserve.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import su.adminMember.model.AdminCarInfoDTO;
import su.csCenter.model.CsoneandoneDTO;

public class AdminPoolStatusDAOImple implements AdminPoolStatusDAO {

	private SqlSessionTemplate sqlMap;

	public AdminPoolStatusDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	public List<AdminPoolMasterStatusDTO> adminPoolDriverList(int cp, int ls){
		int startnum = (cp-1)*ls+1;
		int endnum = cp*ls;
		Map map = new HashMap();
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		
		List<AdminPoolMasterStatusDTO> list = sqlMap.selectList("adminPoolDriverList", map);
		return list;
	}
	public int adminPoolDriverTotalCnt(){
		int count = sqlMap.selectOne("adminPoolDriverTotalCnt");
		return count;
	}
	public List<AdminPoolMasterStatusDTO> adminDriveAimidxrList(int cp,int ls,String search){
		 int startnum=(cp-1)*ls+1;
			int endnum=cp*ls;
			Map map=new HashMap();
			map.put("search", search);
			map.put("startnum", startnum);
			map.put("endnum", endnum);
			List<AdminPoolMasterStatusDTO> list=
					sqlMap.selectList("adminDriverAimidxList",map);
					return list;
	}
	public List<AdminPoolMasterStatusDTO> adminDriveIdrList(int cp,int ls,String search){
		int startnum=(cp-1)*ls+1;
		int endnum=cp*ls;
		Map map=new HashMap();
		map.put("search", search);
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		List<AdminPoolMasterStatusDTO> list=
				sqlMap.selectList("adminDriverIdList",map);
				return list;
	}
	public List<AdminPoolMasterStatusDTO> adminDriveStatusrList(int cp,int ls,String search){
		int startnum=(cp-1)*ls+1;
		int endnum=cp*ls;
		Map map=new HashMap();
		map.put("search", search);
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		List<AdminPoolMasterStatusDTO> list=
				sqlMap.selectList("adminDriverStatusList",map);
				return list;
	}
	
	//멤버
	public List<AdminPoolMemberStatusDTO> adminPoolMemberList(int cp,int ls){
		int startnum = (cp-1)*ls+1;
		int endnum = cp*ls;
		Map map = new HashMap();
		map.put("startnum", startnum);
		map.put("endnum", endnum);
		
		List<AdminPoolMemberStatusDTO> list = sqlMap.selectList("adminPoolMemberList", map);
		return list;
	}
	public int adminPoolMemberTotlCnt(){
		int count = sqlMap.selectOne("adminPoolMemberTotalCnt");
		return count;
	}
	public int adminDriverReserveDel(int idx){
		int count = sqlMap.delete("amdinDriverReserveDel", idx);
		return count;
	}
	public int adminMemberReserveDel(int idx){
		int count = sqlMap.delete("adminMemberReserveDel", idx);
		return count;
	}

}
