package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

public class Hoadondao {
	public int Them(long makh) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "Insert into hoadon(makh, NgayMua, damua) values(?,?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		java.util.Date n1 = new java.util.Date();
		SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
		String tam = dd.format(n1);
		java.util.Date n2 = dd.parse(tam);
		cmd.setDate(2, new Date(n2.getTime()));
		cmd.setBoolean(3, false);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
		
	}
	
	public long getMaxHD() throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "select MAX(MaHoaDon) as MaxHD from hoadon";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		long max=0;
		if(rs.next()) {
			max = rs.getLong(1);
		}
		rs.close();
		return max;
	}
}
