package bo;

import java.util.ArrayList;

import bean.Loaibean;
import dao.Loaidao;

public class Loaibo {
	Loaidao Ldao = new Loaidao();
	ArrayList<Loaibean> ds;
	public ArrayList<Loaibean> getloai() throws Exception{
		ds = Ldao.getloai();
		return ds;
	}
	public String Tim(String maloai) throws Exception{
		for(Loaibean l: ds) 
			if(l.getMaloai().equals(maloai)) 
				return l.getTenloai();
			return null;		
	}
	public int Themloai(String maloai, String tenloai) throws Exception{
		return Ldao.Themloai(maloai, tenloai);
	}
	
	public int Capnhap(String maloai, String tenloai) throws Exception{
		return Ldao.Capnhap(maloai, tenloai);
	}
	
	public int Xoa(String maloai) throws Exception{
		return Ldao.xoa(maloai);
	}
}
