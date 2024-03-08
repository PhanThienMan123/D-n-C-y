package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.Caybean;
import bean.xacnhanbean;

public class Chitiethoadondao {
	public int ThemChitiethoadon(String macay, long soluongmua, long mahoadon) throws Exception {
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "insert into ChiTietHoaDon(Macay, SoLuongMua, MaHoaDon) values (?,?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, macay);
		cmd.setLong(2, soluongmua);
		cmd.setLong(3, mahoadon);
		int kq=cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	public int CapNhat(long machitietHD) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "update ChiTietHoaDon set damua=1 where MaChiTietHD=3";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, machitietHD);
		int kq=cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	public ArrayList<xacnhanbean> gethoadonchuaxacnhan() throws Exception{
		
			ArrayList<xacnhanbean> ds = new ArrayList<xacnhanbean>();
			ketnoidao kn= new ketnoidao();
			kn.ketnoi();
			String sql = "select * from VXacNhan";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				long makh =rs.getLong("Makh");
				String hoten = rs.getString("Tenkh");
				String tensach= rs.getString("Tencay");
				long gia = rs.getLong("Gia");
				Date ngaymua = rs.getDate("NgayMua");
				long soluongmua = rs.getLong("SoLuongMua");
				boolean damua = rs.getBoolean("damua");
				long thanhtien = rs.getLong("thanhtien");
				long machitietHD = rs.getLong("MaChiTietHD");
				ds.add(new xacnhanbean(makh, hoten, tensach, gia, ngaymua, soluongmua, damua,thanhtien, machitietHD));
			}
			rs.close();
			kn.cn.close();
			return ds;
			
		}
	}

