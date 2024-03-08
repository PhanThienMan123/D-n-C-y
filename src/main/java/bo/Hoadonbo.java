package bo;

import dao.Hoadondao;

public class Hoadonbo {
	Hoadondao HdDao = new Hoadondao();
	public int Them(long makh) throws Exception{
		return HdDao.Them(makh);
	}
	
	public long getMaxHD()throws Exception{
		return HdDao.getMaxHD();
	}
}
