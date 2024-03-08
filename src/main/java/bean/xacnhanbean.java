package bean;

import java.util.Date;

public class xacnhanbean {
	private long makh;
	private String tenkh;
	private String tencay;
	private long gia;
	private Date Ngaymua;
	private long Soluongmua;
	private boolean damua;
	private long thanhtien;
	private long MachitietHD;
	public xacnhanbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public xacnhanbean(long makh, String tenkh, String tencay, long gia, Date ngaymua, long soluongmua, boolean damua,
			long thanhtien, long machitietHD) {
		super();
		this.makh = makh;
		this.tenkh = tenkh;
		this.tencay = tencay;
		this.gia = gia;
		Ngaymua = ngaymua;
		Soluongmua = soluongmua;
		this.damua = damua;
		this.thanhtien = thanhtien;
		MachitietHD = machitietHD;
	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	public String getTenkh() {
		return tenkh;
	}
	public void setTenkh(String tenkh) {
		this.tenkh = tenkh;
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
	public Date getNgaymua() {
		return Ngaymua;
	}
	public void setNgaymua(Date ngaymua) {
		Ngaymua = ngaymua;
	}
	public long getSoluongmua() {
		return Soluongmua;
	}
	public void setSoluongmua(long soluongmua) {
		Soluongmua = soluongmua;
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
	public long getMachitietHD() {
		return MachitietHD;
	}
	public void setMachitietHD(long machitietHD) {
		MachitietHD = machitietHD;
	}
	
	
	
}
