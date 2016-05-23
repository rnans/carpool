package su.carpool.model;

import java.util.List;
import java.util.*;
import su.member.model.*;

import org.mybatis.spring.SqlSessionTemplate;

public class CarPoolDAOImple implements CarPoolDAO {

	private SqlSessionTemplate sqlMap;

	// 생성자 방식
	public CarPoolDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public CarPoolDTO getCarInfo(String userid) {
		// TODO Auto-generated method stub
		return null;
	}
	

	public MemberDTO getUserInfo(String userid) {

		List<MemberDTO> list = sqlMap.selectList("getUserInfo", userid);

		if (list == null) {
			return null;
		}

		MemberDTO dto = (MemberDTO) list.get(0);

		return dto;
	}
}
