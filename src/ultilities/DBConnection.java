package ultilities;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

public class DBConnection {
	private Connection con = null;
	public  Connection getConnection(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/hrd_student","root","");
			//DatabaseMetaData d = con.getMetaData();
			//System.out.println(d.getDatabaseProductName());
		}catch(SQLException e){
			//System.out.println(e.getStackTrace());
		}catch (ClassNotFoundException e) {
			//System.out.println(e.getStackTrace());
		}		
		return con;		
	}	
	
}