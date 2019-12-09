package models.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import models.*;

public class BillDAO {
	
	public static void insert(Bill bill) {
		Connection con=DBConnector.createConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("insert into bill(id,firstname,lastname,street_address,city,phone,note,userid) values(?,?,?,?,?,?,?,?)");
			ps.setInt(1, bill.getId());
			ps.setString(2, bill.getFistname());
			ps.setString(3, bill.getLastname());
			ps.setString(4, bill.getStreet_address());
			ps.setString(5, bill.getCity());
			ps.setString(6, bill.getPhone());
			ps.setString(7, bill.getNote());
			ps.setInt(8, bill.getUser().getId());
			ps.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static int getQuantityBill() {
		int count=0;
		Connection con=DBConnector.createConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("select * from bill");
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				
				count++;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return count;
	}
	public static ArrayList<Bill> getByUserID(int userid){
		User user=UserDAO.getById(userid);
		Connection con=DBConnector.createConnection();
		PreparedStatement ps;
		ArrayList<Bill> list=new ArrayList<Bill>();
		try {
			ps = con.prepareStatement("select * from bill where userid="+userid);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				int id=rs.getInt(1);
				String fistname=rs.getString(2);
				String lastname=rs.getString(3);
				String street_address=rs.getString(4);
				String city=rs.getString(5);
				String phone=rs.getString(6);
				String note=rs.getString(7);
				ArrayList<Item> items=ItemDAO.getByBillID(id);
				Cart cart=new Cart(items);
				
				Bill bill=new Bill(id, user, fistname, lastname, street_address, city, phone, note, cart);
				list.add(bill);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public static ArrayList<Bill> getAll(){
	
		Connection con=DBConnector.createConnection();
		PreparedStatement ps;
		ArrayList<Bill> list=new ArrayList<Bill>();
		try {
			ps = con.prepareStatement("select * from bill");
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				int id=rs.getInt(1);
				String fistname=rs.getString(2);
				String lastname=rs.getString(3);
				String street_address=rs.getString(4);
				String city=rs.getString(5);
				String phone=rs.getString(6);
				String note=rs.getString(7);
				ArrayList<Item> items=ItemDAO.getByBillID(id);
				int userid=rs.getInt(8);
				Cart cart=new Cart(items);
				User user=UserDAO.getById(userid);
				Bill bill=new Bill(id, user, fistname, lastname, street_address, city, phone, note, cart);
				list.add(bill);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public static Bill getByID(int id){
		
		Connection con=DBConnector.createConnection();
		PreparedStatement ps;
	
		try {
			ps = con.prepareStatement("select * from bill where id="+id);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				
		
				String fistname=rs.getString(2);
				String lastname=rs.getString(3);
				String street_address=rs.getString(4);
				String city=rs.getString(5);
				String phone=rs.getString(6);
				String note=rs.getString(7);
				ArrayList<Item> items=ItemDAO.getByBillID(id);
				int userid=rs.getInt(8);
				Cart cart=new Cart(items);
				User user=UserDAO.getById(userid);
				Bill bill=new Bill(id, user, fistname, lastname, street_address, city, phone, note, cart);
				return bill;
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
