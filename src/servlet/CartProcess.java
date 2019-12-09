package servlet;

import java.io.IOException;
import models.Cart;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Product;
import models.DAO.ProductDAO;

/**
 * Servlet implementation class Cart
 */
@WebServlet("/CartProcess")
public class CartProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String command=null;  
    private int idsp;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 command=request.getParameter("command");
		if(command!=null) {
			 idsp=Integer.parseInt(request.getParameter("id"));
			doPost(request, response);
		}
		else {
			request.getRequestDispatcher("Cart.jsp").forward(request, response);	
		}
		
	}	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session=request.getSession();
		Cart cart=(Cart)session.getAttribute("cart");
		command=request.getParameter("command");
		if(command!=null) {
			
			try {
				
				
				switch(command){
					case "plus":
						idsp=Integer.parseInt(request.getParameter("id"));
						Product p=ProductDAO.getProductbyID(idsp);
						int quantity=Integer.parseInt(request.getParameter("quantity"));
							cart.insertToCart(p, quantity);
						
						break;
					
					case "remove":
						Product q=ProductDAO.getProductbyID(idsp);
						cart.deleteFromCart(q);
						break;
						
					
				}
			}
			catch(Exception e) {
				
			}
		}
		
		
		
		session.setAttribute("cart", cart);
		response.sendRedirect("/BaiTapLon/CartProcess");
		//request.getRequestDispatcher("Cart.jsp").forward(request, response);
		
	}

}
