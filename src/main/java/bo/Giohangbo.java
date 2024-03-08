package bo;

import java.util.ArrayList;

import bean.Giohangbean;

public class Giohangbo {
	public ArrayList<Giohangbean> ds = new ArrayList<Giohangbean>();
	public void ThemHang(String macay, String tencay, long gia, long soluongmua,String anh) {
		//kiem tra xem hang da co trog ds chua
		// Neu co thi tang so luong
		for(Giohangbean h:ds)
			if(h.getMacay().equals(macay)) {
				h.setSoluongmua(h.getSoluongmua()+soluongmua);
				return ;
			}
		Giohangbean h = new Giohangbean(macay, tencay, gia, soluongmua, anh);
		ds.add(h);//Them hang vao gio
	}
	//xoa hang ra khoi gio
	public void XoaHang(String macay) {
		for(Giohangbean h:ds)
			if(h.getMacay().equals(macay)) {
				ds.remove(h);
				return;
			}
	}
		//Sua lai so luong
		public void Sua(String macay, long soluongmoi) {
			int n=ds.size(); // lay so sach trong do
			for(int i=0; i<n; i++) {
				Giohangbean h=ds.get(i);// lay sach thu i
				if(h.getMacay().equals(macay)) {
					h.setSoluongmua(soluongmoi);
					ds.set(i,h);// Luu lai vao ds
					return;
				}
			}
		}
		public long Tongtien() {
			int n = ds.size();
			long s=0;
			for(Giohangbean h:ds) {
				s=s+h.getThanhtien();
			}
			return s;
			
		}
}
