package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dangkydao;


/**
 * Servlet implementation class DangkyController
 */
@WebServlet("/DangkyController")
public class DangkyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangkyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String username = request.getParameter("t2");
			String password = request.getParameter("txtpass2");
			String email = request.getParameter("email");
			String hoten = request.getParameter("ht");
			String SDT = request.getParameter("sdt");
			String diachi = request.getParameter("dc");
			
			if(username==null || password ==null) {
				RequestDispatcher rd = request.getRequestDispatcher("HthicayController");
				rd.forward(request, response);
			}
			else {
				Dangkydao kh = new Dangkydao();
				kh.Themkh(hoten, diachi, username, password, email, SDT);
				RequestDispatcher rd = request.getRequestDispatcher("HthicayController");
				rd.forward(request, response);
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
