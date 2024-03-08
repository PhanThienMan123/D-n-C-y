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
import bean.Loaibean;
import bo.Caybo;
import bo.Loaibo;


/**
 * Servlet implementation class HthicayController
 */
@WebServlet("/HthicayController")
public class HthicayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HthicayController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
				ArrayList<Caybean> ds;
				
				Caybo cbo = new Caybo();	
				
				ds = cbo.getcay();
				String a = request.getParameter("ml");
				String b = request.getParameter("txttim");
				if(a!=null)
					ds=cbo.Timma(a);
				else
						if(b!=null)
							ds = cbo.Tim(b);
				Loaibo lbo = new Loaibo();
				ArrayList<Loaibean> dsloai= lbo.getloai();
				request.setAttribute("dscay", ds);
				request.setAttribute("dsloai", dsloai);
				RequestDispatcher rd  = request.getRequestDispatcher("HthiCay.jsp");
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
