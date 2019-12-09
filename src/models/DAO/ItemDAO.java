package models.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import models.Item;
import models.Product;

public class ItemDAO {
	public static void insert(int idproduct,int quantity,int billid) {
		Connection con=DBConnector.createConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("insert into item(productid,billid,quantity) values(?,?,?)");
			ps.setInt(1, idproduct);
			ps.setInt(2, billid);
			ps.setInt(3, quantity);
			
			ps.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static ArrayList<Item> getByBillID(int billid){
		
		Connection con=DBConnector.createConnection();
		PreparedStatement ps;
		ArrayList<Item> list=new ArrayList<Item>();
		try {
			ps = con.prepareStatement("select * from item where billid="+billid);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				int id=rs.getInt(1);
				int productid=rs.getInt(2);
				Product product=ProductDAO.getProductbyID(productid);
				int quantity=rs.getInt(4);
				Item item=new Item(id, product, quantity);
				list.add(item);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}
public static ArrayList<Item> getAll(){
		
		Connection con=DBConnector.createConnection();
		PreparedStatement ps;
		ArrayList<Item> list=new ArrayList<Item>();
		try {
			ps = con.prepareStatement("select * from item");
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				int id=rs.getInt(1);
				int productid=rs.getInt(2);
				Product product=ProductDAO.getProductbyID(productid);
				int quantity=rs.getInt(4);
				Item item=new Item(id, product, quantity);
				list.add(item);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}

}
