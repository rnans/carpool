package su.carCost.model;

public class CarCostDTO {

	private int idx;
	private String costday;
	private String category;
	private String bigo;
	private String cost;
	private String km;
	private String id;
	public CarCostDTO() {
		super();
	}
	public CarCostDTO(int idx, String costday, String category, String bigo, String cost, String km, String id) {
		super();
		this.idx = idx;
		this.costday = costday;
		this.category = category;
		this.bigo = bigo;
		this.cost = cost;
		this.km = km;
		this.id = id;
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
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public String getKm() {
		return km;
	}
	public void setKm(String km) {
		this.km = km;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
}