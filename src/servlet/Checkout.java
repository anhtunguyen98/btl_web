package servlet;
import models.*;
import models.DAO.BillDAO;
import models.DAO.ItemDAO;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Checkout
 */
@WebServlet("/Checkout")
public class Checkout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Checkout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		if(user==null) {
			
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
		else {
		request.getRequestDispatcher("Checkout.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		//tao bang bill
		String firstname=request.getParameter("first-name");
		String lastname=request.getParameter("last-name");
		String street_address=request.getParameter("street-address");
		String city=request.getParameter("city");
		String phone=request.getParameter("phone");
		String note=request.getParameter("note");
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		Cart cart=(Cart)session.getAttribute("cart");
		int id=BillDAO.getQuantityBill()+1;
		Bill bill=new Bill(id,user, firstname, lastname, street_address, city, phone, note, cart);
		BillDAO.insert(bill);
		
		
		
		//tao bang item
		ArrayList<Item> list=cart.getList();
		for(Item item:list) {
			ItemDAO.insert(item.getProduct().getId(), item.getQuantity(),bill.getId());
		}
		session.setAttribute("cart", null);
		response.sendRedirect("/BaiTapLon/Account");
	}

}
