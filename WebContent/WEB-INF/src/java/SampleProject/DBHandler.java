package SampleProject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBHandler {
	public Connection getConnect() {
		String url = "jdbc:mysql://localhost:3306/graduate_status?characterEncoding=UTF-8";
		String username = "root";  
        String password = "";
		Connection conn = null;
		
        try {
        	Class.forName("com.mysql.jdbc.Driver" );  
        	conn = (Connection)DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			// TODO: handle exception
		}  
        return conn;
	}
	
	public ResultSet searchInfo(Connection conn, String sql) {
		ResultSet rs = null;
		Statement st = null;
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return rs;
	}
	
	public void executeUpdate(Connection conn, String sql) {
		Statement st = null;
		try {
			st = conn.createStatement();
			st.executeUpdate(sql);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
