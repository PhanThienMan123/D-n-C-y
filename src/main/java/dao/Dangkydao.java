package dao;

import java.sql.PreparedStatement;

public class Dangkydao {
	public int Themkh(String Tenkh, String Diachi, String Tendn, String Password, String Email, String Sodt ) throws Exception {
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "Insert into Khachhang(Tenkh, Diachi, Tendn, Password, Email, Sodt) values(?,?,?,?,?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, Tenkh);
		cmd.setString(2, Diachi);
		cmd.setString(3, Tendn);
		cmd.setString(4, Password);
		cmd.setString(5, Email);
		cmd.setString(6, Sodt);
		
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
}
