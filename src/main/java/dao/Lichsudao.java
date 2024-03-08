package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.Lichsubean;
import bean.Caybean;

public class Lichsudao {
	public ArrayList<Lichsubean> getlichsu() throws Exception{
		ArrayList<Lichsubean> ds = new ArrayList<Lichsubean>();
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "select * from Vhuyhuy\r\n" + 
				"order by YEAR(NgayMua) ASC";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
		// b4 thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		//b5 duyet rs de luu vao ds
		while(rs.next()) {
			String macay = rs.getString("Macay");
			String tencay =rs.getString("Tencay");
			String soluongmua = rs.getString("SoLuongMua");
			Date ngaymua = rs.getDate("NgayMua");
			long gia = rs.getLong("Gia");
			Boolean damua = rs.getBoolean("damua");
			long thanhtien = rs.getLong("thanhtien");
			long makh = rs.getLong("Makh");
			ds.add(new Lichsubean(macay, tencay, soluongmua, ngaymua, gia, damua, thanhtien, makh));
		}
		rs.close(); kn.cn.close();

		return ds;
	}
}
