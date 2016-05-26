package su.carCost.model;

public class CarCostDTO {

	private int idx;
	private String costday;
	private String category;
	private String bigo;
	private int cost;
	private int km;
	private String id;
	private String carnum;
	public CarCostDTO() {
		super();
	}
	public CarCostDTO(int idx, String costday, String category, String bigo, int cost, int km, String id,
			String carnum) {
		super();
		this.idx = idx;
		this.costday = costday;
		this.category = category;
		this.bigo = bigo;
		this.cost = cost;
		this.km = km;
		this.id = id;
		this.carnum = carnum;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getCostday() {
		return costday;
	}
	public void setCostday(String costday) {
		this.costday = costday;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getBigo() {
		return bigo;
	}
	public void setBigo(String bigo) {
		this.bigo = bigo;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public int getKm() {
		return km;
	}
	public void setKm(int km) {
		this.km = km;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCarnum() {
		return carnum;
	}
	public void setCarnum(String carnum) {
		this.carnum = carnum;
	}

	
}