package bo;

import java.util.ArrayList;

import bean.xacnhanbean;
import dao.Chitiethoadondao;

public class Chitiethoadonbo {
	Chitiethoadondao Ctdao = new Chitiethoadondao();
	public int ThemchitietHd(String macay, long soluongmua, long mahoadon) throws Exception{
		return Ctdao.ThemChitiethoadon(macay, soluongmua, mahoadon);
	}
	public int CapNhatCTHD(long machitietHD) throws Exception{
		return Ctdao.CapNhat(machitietHD);
	}
	
	public ArrayList<xacnhanbean> gethoadonchuaxacnhan() throws Exception{
		return Ctdao.gethoadonchuaxacnhan();
	}
}
