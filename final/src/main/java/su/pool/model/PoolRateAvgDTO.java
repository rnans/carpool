package su.pool.model;

public class PoolRateAvgDTO 
{
	Double avg;
	int count;
	int r1;
	int r2;
	int r3;
	int r4;
	int r5;
	public PoolRateAvgDTO(Double avg, int count, int r1, int r2, int r3, int r4, int r5) {
		super();
		this.avg = avg;
		this.count = count;
		this.r1 = r1;
		this.r2 = r2;
		this.r3 = r3;
		this.r4 = r4;
		this.r5 = r5;
	}
	public PoolRateAvgDTO() {
		super();
	}
	public Double getAvg() {
		return avg;
	}
	public void setAvg(Double avg) {
		this.avg = avg;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getR1() {
		return r1;
	}
	public void setR1(int r1) {
		this.r1 = r1;
	}
	public int getR2() {
		return r2;
	}
	public void setR2(int r2) {
		this.r2 = r2;
	}
	public int getR3() {
		return r3;
	}
	public void setR3(int r3) {
		this.r3 = r3;
	}
	public int getR4() {
		return r4;
	}
	public void setR4(int r4) {
		this.r4 = r4;
	}
	public int getR5() {
		return r5;
	}
	public void setR5(int r5) {
		this.r5 = r5;
	}
	
	
	
}
