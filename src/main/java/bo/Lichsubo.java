package bo;

import java.util.ArrayList;

import bean.Lichsubean;
import dao.Lichsudao;

public class Lichsubo {
	Lichsudao Lsdao = new Lichsudao();
	ArrayList<Lichsubean> ds;
	public ArrayList<Lichsubean> getlichsu() throws Exception{
		ds = Lsdao.getlichsu();
		return ds;
	}
}
