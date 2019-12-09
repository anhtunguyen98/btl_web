package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Product;
import models.DAO.ProductDAO;

import java.util.*;
/**
 * Servlet implementation class TrangChu
 */
@WebServlet("/TrangChu")
public class TrangChu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
    	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    	ArrayList<Product> products =ProductDAO.getAll();
			req.setAttribute("products", products);
			req.setAttribute("size", products.size());
			req.getRequestDispatcher("TrangChu.jsp").forward(req, resp);
			//doPost(req, resp);
    	
    	}
    @Override
    	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    		// TODO Auto-generated method stub
    	ArrayList<Product> products =ProductDAO.getAll();
		req.setAttribute("products", products);
		req.setAttribute("size", products.size());
		req.getRequestDispatcher("TrangChu.jsp").forward(req, resp);
    	}
	

}
