package bean;

public class Adminbean {
	private long maadmin;
	private String hoten;
	private String diachi;
	private String tendn;
	private String password;
	public Adminbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Adminbean(long maadmin, String hoten, String diachi, String tendn, String password) {
		super();
		this.maadmin = maadmin;
		this.hoten = hoten;
		this.diachi = diachi;
		this.tendn = tendn;
		this.password = password;
	}
	public long getMaadmin() {
		return maadmin;
	}
	public void setMaadmin(long maadmin) {
		this.maadmin = maadmin;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getTendn() {
		return tendn;
	}
	public void setTendn(String tendn) {
		this.tendn = tendn;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
