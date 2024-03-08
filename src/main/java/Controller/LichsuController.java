package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Lichsubean;
import bo.Lichsubo;

/**
 * Servlet implementation class LichsuController
 */
@WebServlet("/LichsuController")
public class LichsuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LichsuController() {
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
			HttpSession session = request.getSession();
			if(session.getAttribute("un")==null) {
				RequestDispatcher rd = request.getRequestDispatcher("HthicayController");
				rd.forward(request, response);
			}
			else {
				PrintWriter out = response.getWriter();
				ArrayList<Lichsubean> ds;
				Lichsubo Lsbo = new Lichsubo();
				ds = Lsbo.getlichsu();
				request.setAttribute("dslichsu", ds);
				RequestDispatcher rd = request.getRequestDispatcher("lichsumua.jsp");
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
