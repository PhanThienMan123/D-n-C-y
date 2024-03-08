package bean;

public class Khachhangbean {
	private long Makh;
	private String Tenkh;
	private String Diachi;
	private String Tendn;
	private String Password;
	public Khachhangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Khachhangbean(long makh, String tenkh, String diachi, String tendn, String password) {
		super();
		Makh = makh;
		Tenkh = tenkh;
		Diachi = diachi;
		Tendn = tendn;
		Password = password;
	}
	public long getMakh() {
		return Makh;
	}
	public void setMakh(long makh) {
		Makh = makh;
	}
	public String getTenkh() {
		return Tenkh;
	}
	public void setTenkh(String tenkh) {
		Tenkh = tenkh;
	}
	public String getDiachi() {
		return Diachi;
	}
	public void setDiachi(String diachi) {
		Diachi = diachi;
	}
	public String getTendn() {
		return Tendn;
	}
	public void setTendn(String tendn) {
		Tendn = tendn;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
	
	
}
