package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Giohangbean;
import bean.Khachhangbean;
import bo.Giohangbo;
import bo.Chitiethoadonbo;
import bo.Hoadonbo;

/**
 * Servlet implementation class xacnhanController
 */
@WebServlet("/xacnhanController")
public class xacnhanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xacnhanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			Khachhangbean kh = (Khachhangbean)session.getAttribute("un");
			if(kh==null) { //khach hang chua dang nhap
				RequestDispatcher rd = request.getRequestDispatcher("HthicayController");
				rd.forward(request, response);
			}
			else {
				PrintWriter out = response.getWriter();
				out.print("Thanh cong");
				Giohangbo gh = (Giohangbo)session.getAttribute("gh");
				if(gh!=null) { // co hang trong gio
					//tao 1 hoa don
					Hoadonbo hdbo = new Hoadonbo();
					hdbo.Them(kh.getMakh());
					long mahd = hdbo.getMaxHD();
					// Duyet gio de luu vao chi tiet hoa don
					Chitiethoadonbo ctbo = new Chitiethoadonbo();
					for(Giohangbean g: gh.ds ) {
						ctbo.ThemchitietHd(g.getMacay(), g.getSoluongmua(), mahd);
					}
					session.removeAttribute("gh");
					RequestDispatcher rd = request.getRequestDispatcher("htgioController");
					rd.forward(request, response);
				}
			}
		} catch (Exception e) {
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
