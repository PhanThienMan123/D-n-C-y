package bo;
import java.util.ArrayList;

import bean.Caybean;
import dao.Caydao;


public class Caybo{
	Caydao Cdao = new Caydao();
	public ArrayList<Caybean> ds;
	//Viet ham getsach: lay ve all sach;
		public ArrayList<Caybean> getcay() throws Exception{
			ds = Cdao.getcay();
			return ds;
		}
	//Viet ham tim cay
		public ArrayList<Caybean> Timma(String Maloai) throws Exception{
			ArrayList<Caybean> tam=new ArrayList<Caybean>();
			for(Caybean c: ds) 
				if(c.getMaloai().equals(Maloai))
					tam.add(c);
			return tam;
}
		public ArrayList<Caybean> Tim(String key) throws Exception{
			ArrayList<Caybean> tam= new ArrayList<Caybean>();
			for(Caybean c: ds)
				if(c.getTencay().toLowerCase().contains(key.toLowerCase()))
					tam.add(c);
			return tam;
		}
		
		public ArrayList<Caybean> thongtin(String tencay) throws Exception{
			ArrayList<Caybean> tam= new ArrayList<Caybean>();
			for(Caybean c: ds) {
				if(c.getTencay().equals(tencay)) {
					tam.add(c);
				}
			}
			return tam;
				
		}
		
		public int themcay(String macay, String tencay, long gia, long soluong, String anh, String maloai) throws Exception{
			return Cdao.Themcay(macay, tencay, gia, soluong, anh, maloai);
		}
		
		public int capnhatCay(String macay, String tencay, long gia, long soluong, String anh, String maloai) throws Exception{
			return Cdao.CapNhatCay(macay, tencay, gia, soluong, anh, maloai);
		}
		
		public int xoacay(String macay) throws Exception{
			return Cdao.XoaCay(macay);
		}
		
		
		
		
		
}
		