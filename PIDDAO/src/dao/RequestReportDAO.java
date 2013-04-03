package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;

import com.pid.util.*;

import dto.EmployeeDTO;

import dto.RequestDTO;

public class RequestReportDAO extends DataAccessObject{

	List userData = new ArrayList();
	List listData = new ArrayList(); 
	public String type=null;
	public String fromDate=null;
	public String toDate=null;
	public String status=null;
	public String empId=null;
	/*public String =null;*/
	
	public List empLeaveReport(String userId){
		Connection conn=null;
		
		ResultSet rs=null;
		Statement stmt=null;
		Connection sqlCon = null;
		Statement sqlStmt = null;
		ResultSet resultSet = null;
		String sqlQuery = null;
		PreparedStatement preparedStatement = null;
		RequestDTO requestDTO = null;
		 
		//String ConnectionURL="jdbc:db2://192.168.1.169:50000/PIM";
				
		try
		{
			sqlCon = getSQLConnection();
			//Class.forName("com.ibm.db2.jcc.DB2Driver");
			//conn=DriverManager.getConnection(ConnectionURL, "dba","visiondba");
			sqlStmt =sqlCon.createStatement();
			sqlQuery=("select rq.req_emp_id,rq.req_from_date,rq.req_to_date," +
					"crq.code_desc,crs.code_desc from employee e,request rq," +
					"code_misc crq,code_misc crs,response rs where e.emp_id='"+userId+"'" +
					" and rq.req_emp_id=e.emp_id and rq.req_type_id=crq.code_id" +
					" and rs.resp_req_id=rq.req_id and rs.resp_status_id=crs.code_id ");
			
			sqlStmt = sqlCon.createStatement();
			
			resultSet = sqlStmt.executeQuery(sqlQuery);
			
			List leaveList = populateLeaveList(resultSet);
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		closeSQLConnection(sqlCon, sqlStmt, resultSet);
			
			/*while(rs.next()){
				List userData = new ArrayList();
				type=rs.getString("code_desc");
				empId=rs.getString("req_emp_id");
				fromDate=rs.getString("req_from_date");
				toDate=rs.getString("req_to_date");
				status=rs.getString(5);
				userData.add(type);
				userData.add(fromDate);
				userData.add(toDate);
				userData.add(status);
				listData.add(userData);
			}*/
			
			
			
	/*	}catch (Exception e){
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
		}*/
		return listData;
	}
	
	
	public boolean getLeaveReport(String userId){
		Connection conn=null;
		boolean result = false;
		PDFReport pdfReport = new PDFReport();
		String ConnectionURL="jdbc:db2://192.168.1.169:50000/PIM";
		Statement stmt=null;
		ResultSet rs=null;
		try
		{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			conn=DriverManager.getConnection(ConnectionURL, "dba","visiondba");
/*			stmt =conn.createStatement();
			rs = stmt.executeQuery("select cr.code_value, rq.req_from_date, rq.req_to_date, cs.code_value "
					+"from CODE_MISC cs, CODE_MISC cr, REQUEST rq, RESPONSE rs "
					+ "where rs.resp_status_id = cs.code_id "
					+ "and rq.req_type_id = cr.code_id "
					+ "and rq.req_emp_id = rs.resp_emp_id "
					+ "and rq.req_emp_id = '" +userId +"'");
			rs = stmt.executeQuery("select cr.code_value, rq.req_from_date, rq.req_to_date, cs.code_value "
					+"from CODE_MISC cs, CODE_MISC cr, REQUEST rq, RESPONSE rs "
					+ "where rs.resp_status_id = cs.code_id "
					+ "and rq.req_type_id = cr.code_id "
					+ "and rq.req_emp_id = rs.resp_emp_id "
					+ "and rq.req_emp_id = '" +userId +"'");
*/			
			pdfReport.getPDFReports(conn,userId);
			conn.close();
					
		}
			catch(SQLException ex){
				System.out.println(ex);
			} catch(Exception e){
				e.printStackTrace();
			}
		return result;
	}


	public List getLeaveList() {
		
		Connection sqlCon = null;
		Statement sqlStmt = null;
		ResultSet resultSet = null;
		PreparedStatement preparedStatement = null;
		RequestDTO requestDTO = null;
		 
		List leaveList = null;
		String sqlQuery = null;
		sqlCon = getSQLConnection();
		
		sqlQuery = "select rq.req_emp_id,e.emp_first_name,rq.req_from_date," +
				"rq.req_to_date,crq.code_desc,crs.code_desc from employee e," +
				"request rq,code_misc crq,code_misc crs," +
				"response rs where rq.req_emp_id=e.emp_id and " +
				"rq.req_type_id=crq.code_id and rs.resp_req_id=rq.req_id and" +
				" rs.resp_status_id=crs.code_id "; 		
		try {
			
			sqlStmt = sqlCon.createStatement();
			
			resultSet = sqlStmt.executeQuery(sqlQuery);
			
			leaveList = populateLeaveList(resultSet);
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		closeSQLConnection(sqlCon, sqlStmt, resultSet);
	
		
		return leaveList;
	
	}
	private List populateLeaveList(ResultSet resultSet) throws SQLException {
		
		RequestDTO requestDTO = null;
			
		List leaveList = null;
		
		if(resultSet != null){
			
			leaveList = new ArrayList();

			while(resultSet.next()){
				
				requestDTO = new RequestDTO();
				
				requestDTO.setType(resultSet.getString(1));
				requestDTO.setFromDate(resultSet.getString(2));
				requestDTO.setToDate(resultSet.getString(3));
				requestDTO.setStatus(resultSet.getString(4));
				/*requestDTO.setDesignation(resultSet.getString(5));
				requestDTO.setDept(resultSet.getString(6));
				requestDTO.setReportingTo(resultSet.getString(7));*/
								
				
				leaveList.add(requestDTO);
			}
			
		}
		
		return leaveList;
	}

}
