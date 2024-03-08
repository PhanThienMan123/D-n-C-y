package Controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.*;
import org.eclipse.jdt.internal.compiler.apt.model.NameImpl;

import bean.Caybean;
import bo.Caybo;
/**
 * Servlet implementation class AdminsachController
 */
@WebServlet("/AdminsachController")
public class AdminsachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminsachController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DiskFileItemFactory factory = new DiskFileItemFactory();
		DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
		String dirUrl1 = request.getServletContext().getRealPath("") + File.separator + "caycanh";
		response.getWriter().println(dirUrl1);
		try {
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			Caybo Cbo = new Caybo();
			String tencay = null, maloai=null, mc = null, bta=null ;
			long gia=0, soluong=0;
			String nameimg = null;
			List<FileItem> fileItem = upload.parseRequest(request);
				for(FileItem fileitem1: fileItem) {
					if(!fileitem1.isFormField()){ //neu ko phai la controller
						 nameimg = fileitem1.getName();
						if(!nameimg.equals("")) {
							String dirUrl = "C:\\Users\\manph\\eclipse-workspace\\Dự án\\src\\main\\webapp\\caycanh";
							File dir = new File(dirUrl);
							if(!dir.exists()) {
								dir.mkdir();
							}
							String fileImg = dirUrl + File.separator + nameimg;
							File file = new File(fileImg);
								try {
									fileitem1.write(file);
									System.out.println("Upload Thanh Cong");
									System.out.println("Duong dan luu file la: " + dirUrl);
								} catch (Exception e) {
									e.printStackTrace();
								}
						}
					}
					else { //Neu la controller
						ArrayList<Caybean> ds = new ArrayList<Caybean>();
						String tentk = fileitem1.getFieldName();
						if(tentk.equals("txtmacay")) {
							mc = fileitem1.getString();
						}
						if(tentk.equals("txttencay")) {
							tencay = new String(fileitem1.getString().getBytes("ISO-8859-1"), "utf-8");
						}
						if(tentk.equals("txtgia")) {
							gia = Long.parseLong(fileitem1.getString());
						}
						if(tentk.equals("txtsl")) {
							soluong = Long.parseLong(fileitem1.getString());
						}
						if(tentk.equals("txtml")) {
							maloai = fileitem1.getString();
						}
						if(tentk.equals("butadd")) {
							bta = fileitem1.getString();
						}
						if(tentk.equals("butupdate")) {
							bta = fileitem1.getString();
						}
						
					}
				}
				if(bta.equals("add")) {
					System.out.println("Hello");
					Cbo.themcay(mc, tencay, gia, soluong, nameimg, maloai);
				}
				else {
					if(bta.equals("Update")) {
						Cbo.capnhatCay(mc, tencay, gia, soluong, nameimg, maloai);
					}
				}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			String tab = request.getParameter("tab");
			String macay = request.getParameter("mc");
			Caybo Cbo = new Caybo();
			if(tab!=null && tab.equals("xoa")) {
				Cbo.xoacay(request.getParameter("mc"));
			}
			else {
				if(tab!=null && tab.equals("chon")) {
					request.setAttribute("mc", macay);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			Caybo Cbo = new Caybo();
			request.setAttribute("dscay", Cbo.getcay());
			RequestDispatcher rd = request.getRequestDispatcher("AdminSach.jsp");
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
