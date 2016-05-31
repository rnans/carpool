package su.upload.model;

import java.util.List;

public interface UploadDAO {
	
	public int upload(UploadDTO dto);
    public List<UploadDTO> imgFind(String id);
}
