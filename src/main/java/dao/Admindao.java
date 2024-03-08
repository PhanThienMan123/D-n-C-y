package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Adminbean;

public class Admindao {
	public Adminbean ktkh(String tendn, String pass) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "select * from Admin where Tendn=? and Password=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tendn);
		cmd.setString(2, pass);
		ResultSet rs = cmd.executeQuery();
		Adminbean kh =null;
		while(rs.next()) {
			long makh = rs.getLong("Makh");
			String hoten = rs.getString("Tenkh");
			String diachi = rs.getString("Diachi");
			String tendn1 = rs.getString("Tendn");
			String pass1 = rs.getString("Password");
			kh = new Adminbean(makh, hoten, diachi, tendn1, pass1);
		}
		return kh;
	}

}
