package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Khachhangbean;


public class Khachhangdao {
public Khachhangbean ktkh(String tendn, String pass) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "select * from Khachhang where Tendn=? and Password=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tendn);
		cmd.setString(2, pass);
		ResultSet rs = cmd.executeQuery();
		Khachhangbean kh =null;
		while(rs.next()) {
			long makh = rs.getLong("Makh");
			String hoten = rs.getString("Tenkh");
			String diachi = rs.getString("Diachi");
			String tendn1 = rs.getString("Tendn");
			String pass1 = rs.getString("Password");
			kh = new Khachhangbean(makh, hoten, diachi, tendn1, pass1);
		}
		return kh;
	}
}
