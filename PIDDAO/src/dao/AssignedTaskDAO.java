package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;

public class AssignedTaskDAO extends DataAccessObject{

	List result = new ArrayList();   
	
	public List empTask(String userId){
		
		Connection conn=null;
		ResultSet rs=null;
		Statement stmt=null;
		//String ConnectionURL="jdbc:db2://192.168.1.169:50000/PIM";
				
		try
		{
			conn = getSQLConnection();
			//Class.forName("com.ibm.db2.jcc.DB2Driver");
			//conn=DriverManager.getConnection(ConnectionURL, "dba","visiondba");
			stmt =conn.createStatement();
			rs=stmt.executeQuery("select e.emp_first_name,t.task_title,c.code_desc," +
					"t.task_date,t.task_start_date,t.task_end_date," +
					"t.task_update_date from employee e,code_misc c," +
					"task_details t where e.emp_id=t.task_assigned_id" +
					" and c.code_id=t.task_progress_id ");
			
			
			while(rs.next()){
				
			}
		}catch (Exception e){
			System.out.println(e);
		}finally {
			if(rs!=null && conn!=null)
				try
			{
					rs.close();
					conn.close();
					System.out.println("Database connection is Disconnected");
		}
			catch(SQLException ex){
				System.out.println(ex);
			}
		}
		return null;
	}
}
