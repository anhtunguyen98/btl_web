package servlet;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.DAO.ProductDAO;

/**
 * Servlet implementation class AddProduct
 */
@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String img="./img/";
		String nameproduct=request.getParameter("nameproduct");
		String phukien=request.getParameter("phukien");
		String baohanh=request.getParameter("baohanh");
		String thongtin=request.getParameter("thongtin");
		int gia=Integer.parseInt(request.getParameter("gia"));
		String img1=request.getParameter("img1");File f1=new File(img1);String im1=img+f1.getName();
		String img2=request.getParameter("img2");File f2=new File(img2);String im2=img+f2.getName();
		String img3=request.getParameter("img3");File f3=new File(img3);String im3=img+f3.getName();
		String img4=request.getParameter("img4");File f4=new File(img4);String im4=img+f4.getName();
		
		String linkimg=im1+";"+im2+";"+im3+";"+im4;
		System.out.print(nameproduct+" "+phukien+" "+baohanh+" "+thongtin+" "+linkimg);
		ProductDAO.insert(nameproduct, phukien, baohanh, thongtin, gia, linkimg);
		response.sendRedirect("/BaiTapLon/ViewProduct");
		//request.getRequestDispatcher("ViewProduct").forward(request, response);
		//response.sendRedirect("ViewProduct");
	}

}
