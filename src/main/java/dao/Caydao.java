package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.Caybean;

public class Caydao {
	public ArrayList<Caybean> getcay() throws Exception{
		ArrayList<Caybean> ds = new ArrayList<Caybean>();
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "select * from Cay";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()){
			String macay = rs.getString("Macay");
			String tencay = rs.getString("Tencay");
			long gia = rs.getLong("Gia");
			long soluong = rs.getLong("Soluong");
			String anh = rs.getString("Anh");
			String maloai = rs.getString("Maloai");
			ds.add(new Caybean(macay, tencay, gia, soluong, anh, maloai));
		}
		return ds;
	}
	
	public int Themcay(String macay, String tencay, long gia, long soluong, String anh, String maloai) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "insert into Cay(Macay, Tencay, Gia, Soluong, Anh, Maloai) values(?,?,?,?,?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, macay);
		cmd.setString(2, tencay);
		cmd.setLong(3, gia);
		cmd.setLong(4, soluong);
		cmd.setString(5, anh);
		cmd.setString(6, maloai);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
		
	}
	public int CapNhatCay(String macay, String tencay, long gia, long soluong, String anh, String maloai) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "update Cay set Tencay=?, Gia=?, Soluong=?, Anh=?, Maloai=? where Macay=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tencay);
		cmd.setLong(2, gia);
		cmd.setLong(3, soluong);
		cmd.setString(4, anh);
		cmd.setString(5, maloai);
		cmd.setString(6, macay);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	public int XoaCay(String macay) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "delete from Cay where Macay=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, macay);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	
	
}