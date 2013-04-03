package dao;

import java.util.ArrayList;
import java.util.List;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.SQLException;



public class ApplyLeaveDAO extends DataAccessObject {

	public boolean applyLeave(String userId,String daysRequired, String startDate, String endDate, String reason ){
		boolean isApplyLeave = false;
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		Statement stmt=null;

		//String ConnectionURL="jdbc:db2://192.168.1.169:50000/PIM";
		
		if(!reason.equals("null")){
			
		}else{
			reason="";
		}
		try	{
			conn = getSQLConnection(); 
			//Class.forName("com.ibm.db2.jcc.DB2Driver");
			//conn=DriverManager.getConnection(ConnectionURL, "dba","visiondba");
			stmt =conn.createStatement();
			ps=conn.prepareStatement("insert into request(req_type_id,req_emp_id,req_from_date,req_to_date,req_reason) values ('18001','"+userId+"','"+startDate+"','"+endDate+"','"+reason+"')");
			//rs=stmt.executeQuery("insert into request(req_type_id,req_emp_id,req_date,req_from_date,req_to_date,req_reason,req_status_id,req_start_half,req_end_half) values ('18003','"+userId+"','','','','','','',''");
			ps.executeUpdate();
			isApplyLeave = true;
			
		}catch (Exception e){
			System.out.println(e);
		}finally {
			
			if(ps!=null && conn!=null){
				try	{
					ps.close();
					conn.close();
					
				}catch(SQLException ex){
					System.out.println(ex);
				}
			}
		}
		
		return isApplyLeave;
	}
}
