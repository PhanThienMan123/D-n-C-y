package bo;

import dao.Dangkydao;

public class Dangkybo {
	Dangkydao khdao = new Dangkydao();
	public int Themds(String Tenkh, String Diachi, String Tendn, String Password, String Email, String Sodt) throws Exception{
		return khdao.Themkh(Tenkh, Diachi, Tendn, Password, Email, Sodt);
	}
}
