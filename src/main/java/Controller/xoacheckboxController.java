package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.Giohangbo;

/**
 * Servlet implementation class xoacheckboxController
 */
@WebServlet("/xoacheckboxController")
public class xoacheckboxController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xoacheckboxController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String [] d = request.getParameterValues("tc");
		if(d!=null) {
			Giohangbo g = new Giohangbo();
			HttpSession session = request.getSession();
			g = (Giohangbo)session.getAttribute("gh");
			
			for(String i: d) {
				int sh=g.ds.size();
				for(int j=0; j<sh; j++) {
					if(g.ds.get(j).getTencay().equals(i)) {
						g.ds.remove(j);
						break;
					}
				}
			}
			RequestDispatcher rd = request.getRequestDispatcher("htgioController");
			rd.forward(request, response);
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
