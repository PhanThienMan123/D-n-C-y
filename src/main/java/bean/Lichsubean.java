package bean;

import java.util.Date;

public class Lichsubean {
	private String macay;
	private String tencay;
	private String soluongmua;
	private Date ngaymua;
	private long gia;
	private boolean damua;
	private long thanhtien;
	private long makh;
	public Lichsubean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Lichsubean(String macay, String tencay, String soluongmua, Date ngaymua, long gia, boolean damua,
			long thanhtien, long makh) {
		super();
		this.macay = macay;
		this.tencay = tencay;
		this.soluongmua = soluongmua;
		this.ngaymua = ngaymua;
		this.gia = gia;
		this.damua = damua;
		this.thanhtien = thanhtien;
		this.makh = makh;
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
	public String getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(String soluongmua) {
		this.soluongmua = soluongmua;
	}
	public Date getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	
	
}
