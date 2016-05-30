package su.wishpool.model;

import java.util.List;


public interface WishpoolListDAO {

	public List<WishpoolListDTO> wishList(int cp, int ls);
	public int wishpoolTotalCnt();
	

	
	
}
