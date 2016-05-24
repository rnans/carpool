package su.carinfo.model;

public class carInfoDTO {

	private String id;
    private String driver;
    private String carNum;
    private String carType;
    
	public carInfoDTO(String id, String driver, String carNum, String carType) {
		super();
		this.id = id;
		this.driver = driver;
		this.carNum = carNum;
		this.carType = carType;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public String getCarNum() {
		return carNum;
	}

	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}

	public String getCarType() {
		return carType;
	}

	public void setCarType(String carType) {
		this.carType = carType;
	}
    
    
}
