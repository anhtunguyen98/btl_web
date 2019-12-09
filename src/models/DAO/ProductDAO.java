package models.DAO;

import java.sql.*;
import java.sql.Date;
import java.util.*;
import models.*;

public class ProductDAO {
	
	public static ArrayList<Product> getAll() {
		String sql="select * from product";
		ArrayList<Product> list=new ArrayList<Product>();
		Connection con=DBConnector.createConnection();
		try {
			Statement stm=con.createStatement();
			ResultSet rs=stm.executeQuery(sql);
			while(rs.next()) {
				int id=rs.getInt(1);
				 String name=rs.getString(2);
				 String phukien=rs.getString(3);
				 
				 String baohanh=rs.getString(4);
				 String thongtin=rs.getString(5);
				 
				 int gia=rs.getInt(6);
				 String linkimg=rs.getString(7);
				 
				 String []img=linkimg.split(";");
				 Product p=new Product(id,name,phukien,baohanh,thongtin,gia,img[0],img[1],img[2],img[3]);
				 list.add(p);
			}
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public static Product getProductbyID(int id) {
		Connection con=DBConnector.createConnection();
		String sql="select * from product WHERE id="+id;
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			//ps.setInt(1, id);
			ResultSet rs=ps.executeQuery(sql);
			while(rs.next()) {
				
				 String name=rs.getString(2);
				 String phukien=rs.getString(3);
				 
				 String baohanh=rs.getString(4);
				 String thongtin=rs.getString(5);
				 
				 int gia=rs.getInt(6);
				 String linkimg=rs.getString(7);
				 
				 String []img=linkimg.split(";");
				 Product p=new Product(id,name,phukien,baohanh,thongtin,gia,img[0],img[1],img[2],img[3]);
				 return p;
				
				 
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
		
	}
	public static void insert(String name,String phukien,String baohanh,String thongtin,int gia,String linkimg) {
		Connection con=DBConnector.createConnection();
		try {
			PreparedStatement ps=con.prepareStatement("insert into product(name,phukien,baohanh,thongtin,gia,linkimg) values(?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, phukien);
			ps.setString(3, baohanh);
			ps.setString(4, thongtin);
			ps.setInt(5, gia);
			ps.setString(6, linkimg);
			ps.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public static void editByID(int id,String name,String phukien,String baohanh,String thongtin,int gia ) {
		Connection con=DBConnector.createConnection();
		try {
			PreparedStatement ps=con.prepareStatement("UPDATE product SET name=?,phukien=?,baohanh=?,thongtin=?,gia=? WHERE id= ?");
			ps.setString(1, name);
			ps.setString(2, phukien);
			ps.setString(3, baohanh);
			ps.setString(4, thongtin);
			ps.setInt(5, gia);
			ps.setInt(6, id);
			ps.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public static void deleteByID(int id) {
		Connection con=DBConnector.createConnection();
		try {
			PreparedStatement ps=con.prepareStatement("delete from product where id="+id);
			ps.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	

}
