package test;

import models.Product;
import models.DAO.ProductDAO;
import models.DAO.UserDAO;

public class Main {
	public static void Main(String []asrg) {
		Product p=ProductDAO.getProductbyID(1);
		System.out.println(p.toString());
	}
}
