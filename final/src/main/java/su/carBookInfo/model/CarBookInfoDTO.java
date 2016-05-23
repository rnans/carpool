package su.carBookInfo.model;

public class CarBookInfoDTO {

	private int idx;
	private String id;
	private String carkind1;
	private String carkind2;
	private String carkind3;
	private String carnum;
	private String oilcost;
	public CarBookInfoDTO() {
		super();
	}
	public CarBookInfoDTO(int idx, String id, String carkind1, String carkind2, String carkind3, String carnum,
			String oilcost) {
		super();
		this.idx = idx;
		this.id = id;
		this.carkind1 = carkind1;
		this.carkind2 = carkind2;
		this.carkind3 = carkind3;
		this.carnum = carnum;
		this.oilcost = oilcost;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCarkind1() {
		return carkind1;
	}
	public void setCarkind1(String carkind1) {
		this.carkind1 = carkind1;
	}
	public String getCarkind2() {
		return carkind2;
	}
	public void setCarkind2(String carkind2) {
		this.carkind2 = carkind2;
	}
	public String getCarkind3() {
		return carkind3;
	}
	public void setCarkind3(String carkind3) {
		this.carkind3 = carkind3;
	}
	public String getCarnum() {
		return carnum;
	}
	public void setCarnum(String carnum) {
		this.carnum = carnum;
	}
	public String getOilcost() {
		return oilcost;
	}
	public void setOilcost(String oilcost) {
		this.oilcost = oilcost;
	}
	
}
