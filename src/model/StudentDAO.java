package model;

import java.sql.DatabaseMetaData;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

import ultilities.DBConnection;

public class StudentDAO {
	Connection con=null;	
	public boolean insertStudent(Student stu) throws SQLException{				
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			con = (Connection) new DBConnection().getConnection();
			ps = con.prepareStatement("INSERT INTO  hrd_students(stu_id,stu_name,stu_gender,stu_university,stu_class,stu_status) VALUES(?,?,?,?,?,?)");
			ps.setString(1, lastID());		
			ps.setString(2, stu.getName());
			ps.setInt(3, stu.getGender());
			ps.setString(4, stu.getUniversity());
			ps.setString(5, stu.getClassroom());
			ps.setInt(6, stu.getStatus());
			
			if(ps.executeUpdate()>0){
				return true;
			}	
		}finally{
			if(rs !=null) rs.close();
			if(ps !=null) ps.close();
			if(con !=null) con.close();
		}
		return false;
	}
	public boolean updateStudent(Student stu) throws SQLException{
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			con = (Connection) new DBConnection().getConnection();
			ps = con.prepareStatement("UPDATE hrd_students SET stu_name= ? , stu_gender= ? , stu_university= ? , stu_class= ? , stu_status= ? WHERE stu_id= ? ");
					
			ps.setString(1, stu.getName());	
			ps.setInt(2, stu.getGender());
			ps.setString(3, stu.getUniversity());
			ps.setString(4, stu.getClassroom());
			ps.setInt(5, stu.getStatus());
			ps.setString(6, stu.getId());	
			
			if(ps.executeUpdate()>0){
				return true;
			}	
		}finally{
			if(rs !=null) rs.close();
			if(ps !=null) ps.close();
			if(con !=null) con.close();
		}
		return false;
	}
	public boolean deleteStudent(String id) throws SQLException{
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{			
			con = (Connection) new DBConnection().getConnection();			
			ps = con.prepareStatement("DELETE FROM hrd_students WHERE stu_id=?");											
			ps.setString(1,id);
			if(ps.executeUpdate()>0)
				return true;
			return false;
		}finally{
			if(rs !=null) rs.close();
			if(ps !=null) ps.close();
			if(con !=null) con.close();
		}
	}
	public int checkStatus(int status){
		if(status==0) return 1;
		else return 0;
	}

	public boolean statusStudent(String id,int status) throws SQLException{
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			con = (Connection) new DBConnection().getConnection();
			ps = con.prepareStatement("UPDATE hrd_students SET stu_status= ? WHERE stu_id= ? ");
			
			ps.setInt(1,checkStatus(status));		
			ps.setString(2, id);				
			
			if(ps.executeUpdate()>0){
				return true;
			}	
		}finally{
			if(rs !=null) rs.close();
			if(ps !=null) ps.close();
			if(con !=null) con.close();
		}
		return false;
	}
	@SuppressWarnings("finally")
	public ArrayList<Student> getStudents(Student stu) throws SQLException{
		PreparedStatement ps=null;
		ResultSet rs=null;
		String sql ="SELECT * FROM hrd_students";
		
			
		ArrayList<Student> arrStu = new ArrayList<Student>();
		ArrayList<String> where = new ArrayList<String>();
		
		if(!stu.getName().equals("")){
			where.add("stu_name like '%"+stu.getName()+"%'");
		}
		if(!stu.getClassroom().equals("")){
			where.add("stu_class='"+stu.getClassroom()+"'");
		}
		
		if(stu.getStatus() == 1 || stu.getStatus()==0){
			where.add("stu_status= "+stu.getStatus());
		}
		
		for(int i=0;i<where.size();i++){
			if(i==0)
				sql += " WHERE "+where.get(i);
			else
				sql += " AND "+where.get(i);
		}
		try{
			
			con = (Connection) new DBConnection().getConnection();			
			ps = con.prepareStatement(sql);			
			rs = ps.executeQuery();
			while(rs.next()){
				arrStu.add(new Student(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getInt(6)));		
			}
			
		}finally{
			if(rs !=null) rs.close();
			if(ps !=null) ps.close();
			if(con !=null) con.close();

			return arrStu;
		}		
	}
	@SuppressWarnings("finally")
	public String lastID() throws SQLException{
		PreparedStatement ps=null;
		ResultSet rs=null;
		String lastID = "131N1";
		try{
			con = (Connection) new DBConnection().getConnection();			
			ps = con.prepareStatement("SELECT * FROM hrd_students LIMIT 1 OFFSET ? ");
			ps.setInt(1, countRecord()-1);
			rs = ps.executeQuery();
			while(rs.next()){
				lastID = "131N"+(Integer.parseInt(rs.getString(1).replace("131N",""))+1);			
			}
			
		}finally{
			if(rs !=null) rs.close();
			if(ps !=null) ps.close();
			if(con !=null) con.close();
			return lastID;
		}
	}
	@SuppressWarnings("finally")
	public int countRecord() throws SQLException{
		PreparedStatement ps=null;
		ResultSet rs=null;
		int count = 0;
		try{
			con = (Connection) new DBConnection().getConnection();
			ps = con.prepareStatement("SELECT count(*) FROM hrd_students");
			rs = ps.executeQuery();
			while(rs.next())
				count  = rs.getInt(1);
	
		}finally{
			if(rs !=null) rs.close();
			if(ps !=null) ps.close();
			if(con !=null) con.close();						
			
			if(count == 0)
				return 0;
			else
				return count;
		}
	}
	public static void main(String[] args) throws SQLException, Exception {
		//System.out.println(new StudentDAO().lastID());
		//System.out.println(new StudentDAO().updateStudent(new Student("131N13","Apple",0,"SETEC","BTB",1)));
	}
}
