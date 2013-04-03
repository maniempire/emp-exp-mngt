package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;

public class AddModifyEmpDAO extends DataAccessObject{
	
	
	Connection sqlCon = null;
	Statement sqlStmt = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	
	public boolean updateUser(String userId, String firstName, String lastName, String  empRole, String empDesc, String team, String reportingTo, String empEmail, String 
			empPwd, String dob, String doj, String active, String gender, String bloodGroup, String empCell, String empLandLine, String empPersonalMail,
			String empAddress, String empTempAddress, String empAcc, String empPf, String reliving){
		
		boolean result = false;
		
				
		try
		{
		
			sqlCon = getSQLConnection();
			sqlStmt =sqlCon.createStatement();
			result = true;
		}catch (Exception e){
			System.out.println(e);
		}finally {
			if(resultSet!=null && sqlCon!=null)
				try
			{
					resultSet.close();
					sqlCon.close();
					System.out.println("Database connection is Disconnected");
		}
			catch(SQLException ex){
				System.out.println(ex);
			}
		}
		return result;
	}
	
	public boolean saveUser(String userId, String firstName, String lastName, String  empRole, String empDesc, String team, String reportingTo, String empEmail, String 
			empPwd, String dob, String doj, String active, String gender, String bloodGroup, String empCell, String empLandLine, String empPersonalMail,
			String empAddress, String empTempAddress, String empAcc, String empPf, String reliving){
		boolean result=false;
		
				
		try
		{
			sqlCon = getSQLConnection();
			sqlStmt =sqlCon.createStatement();
			
			preparedStatement=sqlCon.prepareStatement("insert into employee values ('"+userId+"','"+firstName+"','"+lastName+"','"+empPwd+"',(select code_id from code_misc where code_value='"+empRole+"'),'"+empDesc+"','"+empAcc+"','"+empPf+"','Y')");
			preparedStatement.executeUpdate();
			preparedStatement=sqlCon.prepareStatement("insert into employee_official_details values ('5000','"+userId+"',(select emp_id from employee where emp_first_name='"+reportingTo+"'),(select dept_id from department where dept_name='"+team+"'),(select code_id from code_misc where code_value='"+gender+"'),'"+doj+"','"+empEmail+"')");
			preparedStatement.executeUpdate();
			preparedStatement=sqlCon.prepareStatement("insert into employee_personal_details values ('6000','"+userId+"','"+dob+"','"+bloodGroup+"','"+empTempAddress+"','"+empAddress+"','"+empLandLine+"','"+empCell+"','"+empPersonalMail+"')");
			preparedStatement.executeUpdate();
			result = true;
		}catch (Exception e){
			System.out.println(e);
		}finally {
			if(resultSet!=null && sqlCon!=null)
				try
			{
					resultSet.close();
					sqlCon.close();
					System.out.println("Database connection is Disconnected");
		}
			catch(SQLException ex){
				System.out.println(ex);
			}
		}
		return result;
	}
}
