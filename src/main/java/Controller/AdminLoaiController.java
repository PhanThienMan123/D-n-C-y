package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Loaibean;
import bo.Loaibo;

/**
 * Servlet implementation class adminloaiController
 */
@WebServlet("/AdminLoaiController")
public class AdminLoaiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoaiController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Loaibo lbo = new Loaibo();
			request.setAttribute("dsloai", lbo.getloai());
			String tab = request.getParameter("tab");
			String ml = request.getParameter("txtmaloai");
			String tenloai = request.getParameter("txttenloai");
			ArrayList<Loaibean> ds =lbo.getloai();
			if(request.getParameter("butadd")!=null) {
				lbo.Themloai(ml, tenloai);
			}
			else 
				if(request.getParameter("butupdate")!=null) {
					lbo.Capnhap(ml, tenloai);
				}
				else  { 
					String maloai = request.getParameter("ml"); 
					if(tab!=null && tab.equals("xoa"))
						lbo.Xoa(request.getParameter("ml"));
					else {
						if(tab!=null && tab.equals("chon")) {
							request.setAttribute("ml", maloai);
							
						}
					}

				}
			request.setAttribute("dsloai", lbo.getloai());
			RequestDispatcher rd =request.getRequestDispatcher("AdminLoai.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
