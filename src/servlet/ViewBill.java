package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Bill;
import models.Item;
import models.User;
import models.DAO.BillDAO;
import models.DAO.ItemDAO;
import models.DAO.UserDAO;

/**
 * Servlet implementation class ViewBill
 */
@WebServlet("/ViewBill")
public class ViewBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewBill() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<Bill> bills=BillDAO.getAll();
		//ArrayList<User> users=UserDAO.getAll();
		request.setAttribute("bills", bills);

//		ArrayList<Item> items=ItemDAO.getAll();
		request.getRequestDispatcher("ViewBill.jsp").forward(request, response);
		
	}

}
