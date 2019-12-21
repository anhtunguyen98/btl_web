package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.DAO.UserDAO;;

/**
 * Servlet implementation class Signup
 */
@WebServlet(urlPatterns = {"/Signup"})
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("Signup.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		HttpSession session=request.getSession();
		request.setCharacterEncoding("utf-8");
		String hoten=request.getParameter("name");
		String email=request.getParameter("email");
		String sdt=request.getParameter("tel");
		String user=request.getParameter("user");
		String pass=request.getParameter("pass");
		boolean check=UserDAO.check(user);
		if(check==false) {
			UserDAO.insert( hoten, email, sdt, user, pass);
			response.sendRedirect("/BaiTapLon/Login");
			session.setAttribute("useraxis",null);
		}
		else {
			session.setAttribute("useraxis","tên đăng nhập đã tồn tại");
			response.sendRedirect("/BaiTapLon/Signup");
		}
		
		
	}

}
