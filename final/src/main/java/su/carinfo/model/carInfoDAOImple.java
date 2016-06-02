package su.carinfo.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import su.member.model.MemberDTO;

public class carInfoDAOImple implements carInfoDAO {

	private SqlSessionTemplate sqlMap;

	// 생성자 방식
	public carInfoDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	// 차량등록
	public int carAdd(carInfoDTO dto) {

		int result=0;
		if(dto.getCartype()==null||dto.getCartype().equals("")){
			
		}else{
		 result = sqlMap.insert("carAdd", dto);
		}
		return result;
	}

	// 등록한 모든차량
	public List<carInfoDTO> carAllList(String userid) {

		List<carInfoDTO> dto = sqlMap.selectList("carList", userid);

		return dto;
	}

	// 차량수정(idx가 같은 데이터)
	public carInfoDTO carList(carInfoDTO dto) {

		carInfoDTO dto2 = sqlMap.selectOne("carIdxList", dto);

		return dto2;
	}

	// 차량수정
	public int carUpdate(carInfoDTO dto) {
		int count = sqlMap.update("carUpdate", dto);

		return count;
	}

	// 차량삭제
	public int carDel(carInfoDTO dto) {

		int count = sqlMap.delete("carDel", dto);

		return count;
	}

	// 차량번호 유효성
	public int carNumList(carInfoDTO dto) {

		List<carInfoDTO> carNum = sqlMap.selectList("carNumList", dto);

		if (carNum.size() == 0) {
			return 0;
		}
		if (carNum.get(0).getCarnum().equals(dto.getCarnum())) {
			String dbcarNum = carNum.get(0).getCarnum();
			if (dbcarNum == dto.getCarnum()) {
				return 1;
			} else if (dbcarNum.equals("") || dbcarNum == null) {
				return 0;
			}
		}

		return 1;
	}
	//driver칼럼때문에 name을 불러옴
	public MemberDTO username(String userid) {

		MemberDTO dto3 = sqlMap.selectOne("userName", userid);

		return dto3;
	}
	//유저의 모든 카아이디를 0으로 만듬
	public int carIdZero(String userid) {
	
		int count=sqlMap.update("carIdZero", userid);
		return count;
	}
	//idx의 카아이디를 1로 만듬
	public int carIdOne(carInfoDTO dto) {

		int count=sqlMap.update("carIdOne", dto);
		return count;
	}
}
