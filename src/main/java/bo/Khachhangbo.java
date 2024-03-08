package bo;

import java.util.ArrayList;

import bean.Khachhangbean;
import dao.Khachhangdao;

public class Khachhangbo {
	Khachhangdao kndao = new Khachhangdao();
	public Khachhangbean ktdn(String tendn, String pass) throws Exception{
		return kndao.ktkh(tendn, pass);
	}
}
