package TrainerData;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class TrainerDataBaseSave {
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
	public String Insert(TrainerDataGetAndSet trainerInfo) {
		loaddriver(dbdriver);
		Connection con=getConnection();
		String result="data susscefull entered";
		String sql="insert into gymtrainer.adgymtrainer values(?,?,?,?,?)";
		try {
			PreparedStatement ps =con.prepareStatement(sql);
			ps.setString(1, trainerInfo.getFname());
			ps.setString(2, trainerInfo.getFname());
			ps.setString(3, trainerInfo.getEmailid());
			ps.setString(4, trainerInfo.getPass());
			ps.setString(5, trainerInfo.getSal());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		 result="data not enterd";
		}
		return result;
		
	}

}
