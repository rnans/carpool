package su.upload.model;

import java.util.List;

public interface UploadDAO {
	
	public int upload(UploadDTO dto);
	public int carupload(UploadDTO dto);
    public List<UploadDTO> imgFind(String id);
    public int fileUpdate(UploadDTO dto);
    public String filecheck(String id);
}
