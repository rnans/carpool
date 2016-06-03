package su.carinfo.model;

import java.util.List;

import su.member.model.MemberDTO;
import su.upload.model.UploadDTO;

public interface carInfoDAO {

	public int carAdd(carInfoDTO dto);
	public List<carInfoDTO> carAllList(String userid);
	public carInfoDTO carList(carInfoDTO dto);
	public int carUpdate(carInfoDTO dto);
	public int carDel(carInfoDTO dto);
	public int carNumList(carInfoDTO dto);
	public MemberDTO username(String userid);
	public int carIdZero(String userid);
	public int carIdOne(carInfoDTO dto);
	public List<UploadDTO> carImage(String userid);
}
