package india.ahar.model;

import java.sql.DriverManager;
import java.sql.*;
public class DBCon {
	Connection con = null;
	public Connection getConnection(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/ahar","root","root");
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}

}
