package bean;

public class Giohangbean {
	private String macay;
	private String tencay;
	private long gia;
	private long soluongmua;
	private String anh;
	private long thanhtien;
	public Giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Giohangbean(String macay, String tencay, long gia, long soluongmua, String anh) {
		super();
		this.macay = macay;
		this.tencay = tencay;
		this.gia = gia;
		this.soluongmua = soluongmua;
		this.anh = anh;
		this.thanhtien = soluongmua*gia;
	}
	public String getMacay() {
		return macay;
	}
	public void setMacay(String macay) {
		this.macay = macay;
	}
	public String getTencay() {
		return tencay;
	}
	public void setTencay(String tencay) {
		this.tencay = tencay;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public long getThanhtien() {
		return soluongmua*gia;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	
}
