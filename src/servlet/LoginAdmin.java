package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.UserAdmin;
import models.DAO.UserAdminDAO;

/**
 * Servlet implementation class LoginAdmin
 */
@WebServlet("/LoginAdmin")
public class LoginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		session.setAttribute("admin", null);
		request.getRequestDispatcher("AdminLogin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		//System.out.print(username+" "+password);
		UserAdmin admin=UserAdminDAO.getByUser(username, password);
		//System.out.print(admin.getId());
		if(admin!=null) {
			session.setAttribute("admin", admin);
			session.setAttribute("messad",null);
			request.getRequestDispatcher("AdminHome.jsp").forward(request, response);
		}
		else {
			session.setAttribute("messad","sai tên đăng nhập hoặc mật khẩu");
			response.sendRedirect("/BaiTapLon/LoginAdmin");
		}
		
	}

}
