package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dto.HolidayDTO;


public class HolidayDAO extends  DataAccessObject {

	Connection sqlCon = null;
	Statement sqlStmt = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	
	
	public List getHolidayList(){
		
		List holidayList = null;
		EmployeeDAO employeeDAO = null;
		HolidayDTO holidayDTO =  null;
		
		String sqlQuery = null;
		
		try
		{
		
		sqlQuery = "select * from Holiday";
	
		
			sqlCon = getSQLConnection(); 
			
			sqlStmt =sqlCon.createStatement();
			
			resultSet = sqlStmt.executeQuery(sqlQuery);
			holidayList = new ArrayList();
				
				while(resultSet.next()){
					holidayDTO = new HolidayDTO();
					
					holidayDTO.setDate(resultSet.getString(2));
					holidayDTO.setDay(resultSet.getString(3));
					holidayDTO.setReason(resultSet.getString(4));
					
					holidayList.add(holidayDTO);
				}
		
			
				
		}catch (Exception e){
			System.out.println(e);
		}finally{
			
			closeSQLConnection(sqlCon, sqlStmt, preparedStatement, resultSet);
		}
		
		return holidayList;
	}
	
}
