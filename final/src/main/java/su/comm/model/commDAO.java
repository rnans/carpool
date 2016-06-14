package su.comm.model;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import su.pool.model.PoolDTO;
import su.upload.model.UploadDTO;


public interface commDAO {	
	
	public int commWrite(commBBSDTO dto);
	
	public List<commBBSDTO> bbsList(String poolname); 

	public int scheWrite(scheDTO dto);
	
	public List<scheDTO> scheList(String poolname);
		
	public List<carpoolinfoDTO> commMemberList(String poolname);
	
	public int bbsdel(String idx);
	
	public int reWrite(CommBBSreDTO dto);
	
	public List<CommBBSreDTO> reList(String commid); 
	
	public int redel(String idx);
	
	public List<commBBSDTO> bbsserch(String search, String poolname); 
	
	public int bbsupdate(String idx);
	public int bbsupdate2(String idx);
	
	public int upload(UploadDTO dto);
	
	public List<UploadDTO> imgList(String poolname);
	
	public List<UploadDTO> imgList2();
	
	public List<carpoolinfoDTO> poollist(String id);
	//uploadtest
	
	public List<PoolDTO> carlist(String poolname);
	
	public String carimg2(int caridx);
	
}
