package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.pid.util.Db2ServerInfo;

public class DataAccessObject implements Db2ServerInfo {

	Connection sqlCon = null;
	
	public Connection getSQLConnection(){
		
		String ConnectionURL="jdbc:db2://" +HOST  +":"+ PORT +"/" +DB;
			
		try {
			
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			
			sqlCon = DriverManager.getConnection(ConnectionURL, USER,PASS);
			
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return sqlCon;
	}
	
	
	public void closeSQLConnection(Connection sqlCon, Statement sqlStmt,
			PreparedStatement preparedStatement, ResultSet resultSet) {
		
		try {
		
		if(sqlCon != null){
			
			sqlCon.close();
			
		}
		
		if(sqlStmt != null){
			
			sqlStmt.close();
		}
		
		if(preparedStatement != null){
			
			preparedStatement.close();
		}

		if(resultSet != null){
			resultSet.close();
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}
	
	public void closeSQLConnection(Connection sqlCon, Statement sqlStmt,
			 ResultSet resultSet) {
		
		try {
		
		if(sqlCon != null){
			
			sqlCon.close();
			
		}
		
		if(sqlStmt != null){
			
			sqlStmt.close();
		}

		if(resultSet != null){
			resultSet.close();
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}
	
	
}
