package UserData;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class UserDataSave {
	private String dburl="jdbc:mysql://localhost:3306/gymtrainer";
	private String dbuname ="root";
	private String dbpassword="";
	private String dbdriver="com.mysql.jdbc.Driver";
	public void loaddriver(String dbdriver) {
		try {
			Class.forName(dbdriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}     
	public Connection getConnection() {
		Connection con=null;
		try {
			con=DriverManager.getConnection(dburl, dbuname, dbpassword);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
		

}
	public String Insert(UserGetAndSetData userdata ) {
		loaddriver(dbdriver);
		Connection con=getConnection();
		String result="data susscefull entered";
		String sql="insert into gymtrainer.userdata values(?,?,?,?,?,?)";
		try {
			PreparedStatement ps =con.prepareStatement(sql);
			ps.setString(1, userdata.getFnameString());
			ps.setString(2, userdata.getlNamString());
			ps.setString(3, userdata.getEmailString());
			ps.setString(4, userdata.getPass());
			ps.setString(5, userdata.getCityString());
			ps.setString(6, userdata.getGenderString());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		 result="data not enterd";
		}
		return result;
		
	}

}
