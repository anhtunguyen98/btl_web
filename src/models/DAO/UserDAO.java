package models.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import controller.*;
import models.User;


public class UserDAO {
	public static boolean check(String user) {
		
		Connection con=DBConnector.createConnection();
		try {
			int count=0;
			PreparedStatement ps=con.prepareStatement("select * from user where username=?");
			ps.setString(1, user);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				count++;
			}
			if(count>0) return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}
	public static void insert(String hoten,String email,String sdt,String user,String pass) {
		Connection con=DBConnector.createConnection();
		try {
			PreparedStatement ps=con.prepareStatement("insert into user(username,password,name,email,tel) values(?,?,?,?,?)");
			ps.setString(1, user);
			ps.setString(2, pass);
			ps.setString(3, hoten);
			ps.setString(4, email);
			ps.setString(5, sdt);
			ps.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public static User getByUser(String user,String pass) {
		Connection con=DBConnector.createConnection();
			
			PreparedStatement ps;
			try {
				ps = con.prepareStatement("select * from user where username=? and password=?");
				ps.setString(1, user);
				ps.setString(2, pass);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					
					int id=rs.getInt(1);
					String username=rs.getString(2);
					String password=rs.getString(3);
					String hoten=rs.getString(4);
					String email=rs.getString(5);
					String sdt=rs.getString(6);
					User acc=new User(id,username,password,hoten,email,sdt);
					return acc;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return null;
			
		
	}
	public static void upadate(int id,String name,String email,String phone) {
		Connection con=DBConnector.createConnection();
		try {
			PreparedStatement ps=con.prepareStatement("UPDATE user SET name=?,email=?,tel=? WHERE id= ?");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3,phone);
			ps.setInt(4, id);
			ps.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static User getById(int id) {
		Connection con=DBConnector.createConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("select * from user where id="+id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				
				
				String username=rs.getString(2);
				String password=rs.getString(3);
				String hoten=rs.getString(4);
				String email=rs.getString(5);
				String sdt=rs.getString(6);
				User acc=new User(id,username,password,hoten,email,sdt);
				return acc;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}
	public static ArrayList<User> getAll() {
		Connection con=DBConnector.createConnection();
			ArrayList<User> list=new ArrayList<User>();
			PreparedStatement ps;
			try {
				ps = con.prepareStatement("select * from user");
				
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					
					int id=rs.getInt(1);
					String username=rs.getString(2);
					String password=rs.getString(3);
					String hoten=rs.getString(4);
					String email=rs.getString(5);
					String sdt=rs.getString(6);
					User acc=new User(id,username,password,hoten,email,sdt);
					list.add(acc);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list;
			
		
	}
}
