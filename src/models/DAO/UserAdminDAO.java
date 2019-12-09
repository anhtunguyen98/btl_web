package models.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import models.UserAdmin;

public class UserAdminDAO {
	public static UserAdmin getByUser(String user,String pass) {
		Connection con=DBConnector.createConnection();
			
			PreparedStatement ps;
			try {
				ps = con.prepareStatement("select * from useradmin where username=? and password=?");
				ps.setString(1, user);
				ps.setString(2, pass);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					int id=rs.getInt(1);
					String username=rs.getString(2);
					String passname=rs.getString(3);
					UserAdmin acc=new UserAdmin(id,username,passname);
					
					return acc;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return null;
			
		
	}

}
