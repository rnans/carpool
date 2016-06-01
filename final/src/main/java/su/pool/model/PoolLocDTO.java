package su.pool.model;

public class PoolLocDTO 
{
	int idx;
	int sLat;
	int sLng;
	int eLat;
	int eLng;
	String pathline;
	
	public PoolLocDTO(int idx, int sLat, int sLng, int eLat, int eLng, String pathline) {
		super();
		this.idx = idx;
		this.sLat = sLat;
		this.sLng = sLng;
		this.eLat = eLat;
		this.eLng = eLng;
		this.pathline = pathline;
	}
	
	public PoolLocDTO() {
		super();
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getsLat() {
		return sLat;
	}

	public void setsLat(int sLat) {
		this.sLat = sLat;
	}

	public int getsLng() {
		return sLng;
	}

	public void setsLng(int sLng) {
		this.sLng = sLng;
	}

	public int geteLat() {
		return eLat;
	}

	public void seteLat(int eLat) {
		this.eLat = eLat;
	}

	public int geteLng() {
		return eLng;
	}

	public void seteLng(int eLng) {
		this.eLng = eLng;
	}

	public String getPathline() {
		return pathline;
	}

	public void setPathline(String pathline) {
		this.pathline = pathline;
	}
	
	
}
