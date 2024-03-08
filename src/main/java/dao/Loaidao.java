package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import bean.Loaibean;

public class Loaidao {
	public ArrayList<Loaibean> getloai() throws Exception{
		ArrayList<Loaibean> ds = new ArrayList<Loaibean>();
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "select * from Loaicay";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String maloai = rs.getString("Maloai");
			String tenloai = rs.getString("Tenloai");
			ds.add(new Loaibean(maloai, tenloai));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	
	public int Themloai(String maloai, String tenloai) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "Insert into Loaicay(Maloai, Tenloai) values(?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, maloai);
		cmd.setString(2, tenloai);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	
	public int Capnhap(String Maloai, String Tenloai) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "update Loaicay set Tenloai=? where Maloai=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, Tenloai);
		cmd.setString(2, Maloai);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	public int xoa(String maloai) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "delete from Loaicay where Maloai=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, maloai);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	
	
	
	
	
	
}