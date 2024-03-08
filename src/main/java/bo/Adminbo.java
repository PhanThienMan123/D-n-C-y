package bo;

import bean.Adminbean;
import dao.Admindao;

public class Adminbo {
	Admindao Addao = new Admindao();
	public Adminbean ktdn(String tendn, String pass) throws Exception{
		return Addao.ktkh(tendn, pass);
	}
}
