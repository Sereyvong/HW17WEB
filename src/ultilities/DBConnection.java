package ultilities;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private static Connection con = null;
	public  static Connection getConnection(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/hrd_student","root","");
			//DatabaseMetaData d = con.getMetaData();
			//System.out.println(d.getDatabaseProductName());
		}catch(SQLException e){
			e.getStackTrace();
		}catch (ClassNotFoundException e) {
			e.getStackTrace();
		}		
		return con;
	}
}

