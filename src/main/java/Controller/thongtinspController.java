package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Caybean;
import bo.Caybo;
import bo.Loaibo;

/**
 * Servlet implementation class thongtinspController
 */
@WebServlet("/thongtinspController")
public class thongtinspController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public thongtinspController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Loaibo Lbo = new Loaibo();
			request.setAttribute("dsloai", Lbo.getloai());
			
			String tc = request.getParameter("tc");
			Caybo Cbo = new Caybo();
			ArrayList<Caybean> ds = Cbo.getcay();
			if(tc!=null) 
				ds= Cbo.thongtin(tc);
				request.setAttribute("tt", ds);
				RequestDispatcher rd = request.getRequestDispatcher("Thongtinsp.jsp");
				rd.forward(request, response);
			
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
