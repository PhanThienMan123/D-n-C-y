package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.Giohangbo;

/**
 * Servlet implementation class GioController
 */
@WebServlet("/GioController")
public class GioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			String mc=request.getParameter("mc");
			String tc= request.getParameter("tc");
			String giatam= request.getParameter("g");
			String anh = request.getParameter("anh");
			if(mc!=null && tc!=null && giatam!=null && anh!=null){
				long g =Long.parseLong(giatam);
				Giohangbo gh=null;
				HttpSession session = request.getSession();
				if(session.getAttribute("gh")==null){
					gh= new Giohangbo();
					session.setAttribute("gh", gh);// Tao gio hang
				}
				gh=(Giohangbo) session.getAttribute("gh");
				gh.ThemHang(mc,tc, g, 1,anh);
				session.setAttribute("gh", gh);
				response.sendRedirect("htgioController");
			}
		} catch (Exception e) {
			// TODO: handle exception
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
