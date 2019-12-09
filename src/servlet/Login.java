package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;
import models.DAO.UserDAO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doPost(request, response);
			//response.sendRedirect("Login.jsp");
//		String mess=(String)request.getAttribute("mess");
//			request.setAttribute("mess", "");
		HttpSession session=request.getSession();
		session.setAttribute("user", null);
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String user=request.getParameter("username");
		String pass=request.getParameter("pass");
		User acc=UserDAO.getByUser(user,pass);
		if(acc!=null) {
			session.setAttribute("mess", null);
			session.setAttribute("user", acc);
			response.sendRedirect("/BaiTapLon/TrangChu");
			//request.getRequestDispatcher("/TrangChu").forward(request, response);
			
		}
		else {
			session.setAttribute("mess","sai tên đăng nhập hoặc mật khẩu");
			response.sendRedirect("/BaiTapLon/Login");
			
			//request.getRequestDispatcher("Login.jsp").forward(request, response);
//			RequestDispatcher rd = getServletContext().getNamedDispatcher("/Login.jsp");
//			rd.forward(request, response);
			
		}
		
		
	}

}
