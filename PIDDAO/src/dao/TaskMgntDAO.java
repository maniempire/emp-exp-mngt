package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import dto.TaskMgntDTO;

public class TaskMgntDAO extends DataAccessObject {

	
	Connection sqlCon = null;
	Statement sqlStmt = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	
	
	public Collection getTaskList(String userId) {
		
		TaskMgntDTO taskMgntDTO = null;
		
		List taskList = null;
		
		String sqlQuery = null;
		
		sqlCon = getSQLConnection();
		
		sqlQuery = "select t.task_title,e.emp_first_name,t.task_start_date,t.task_end_date,c.code_desc," +
		"t.task_date," +
		"t.task_update_date from employee e,code_misc c," +
		"task_details t where e.emp_id=t.task_assigned_id" +
		" and c.code_id=t.task_progress_id ";
		
		try {
			
			sqlStmt = sqlCon.createStatement();
			
			resultSet = sqlStmt.executeQuery(sqlQuery);
			
			taskList = populateTaskList(resultSet);
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		closeSQLConnection(sqlCon, sqlStmt, resultSet);
	
		
		return taskList;
	}


	private List populateTaskList(ResultSet resultSet) throws SQLException {
		
		TaskMgntDTO taskMgntDTO = null;
		List taskList = null;
		
		if(resultSet != null){
			
			taskList = new ArrayList();

			while(resultSet.next()){
				taskMgntDTO = new TaskMgntDTO();
				
				taskMgntDTO.setTaskName(resultSet.getString(1));
				taskMgntDTO.setTaskAssigneeId(resultSet.getString(2));
				taskMgntDTO.setTaskAssignedDate(resultSet.getString(3));
				taskMgntDTO.setTaskStartDate(resultSet.getString(4));
				taskMgntDTO.setTaskEndDate(resultSet.getString(5));
				taskMgntDTO.setTaskstatus(resultSet.getString(6));
				taskMgntDTO.setUpdateDate(resultSet.getString(7));
				
				taskList.add(taskMgntDTO);
			}
			
		}
		
		return taskList;
	}


	public boolean saveTask(TaskMgntDTO taskMgntDTO) {
		
		List taskList = null;
		
		String sqlQuery = null;
		
		boolean result = false;
		
		sqlCon = getSQLConnection();
		
		try {
			sqlStmt = sqlCon.createStatement();
			preparedStatement=sqlCon.prepareStatement("insert into task_details (task_name,task_date,task_start_date,task_end_date,task_assignee_id,task_assigned_id)" +
					"values('"+taskMgntDTO.getTaskName()+"','"+ taskMgntDTO.getCurrentDate()+"','"+ taskMgntDTO.getTaskStartDate()+"','"+taskMgntDTO.getTaskEndDate()+"','"+taskMgntDTO.getTaskAssigneeId()+"','"+taskMgntDTO.getTaskAssignedId()+"')");
					
			preparedStatement.executeUpdate();
				
			result = true;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		closeSQLConnection(sqlCon, sqlStmt, resultSet);
	
		
		
	
		return result;
		}
	}
		
