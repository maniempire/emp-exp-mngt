package bl;

import java.util.Collection;

import dao.TaskMgntDAO;
import dto.TaskMgntDTO;

public class TaskMgntBL {

	public Collection getTaskList(String userId) {
		
		Collection taskList = null;
		
		TaskMgntDAO taskMgntDAO = new TaskMgntDAO();
		
		taskList = taskMgntDAO.getTaskList(userId);
		
		
		return taskList;
	}

	public boolean saveTask(TaskMgntDTO taskMgntDTO) {
		
		TaskMgntDAO taskMgntDAO = new TaskMgntDAO();
		boolean result;
				result = taskMgntDAO.saveTask(taskMgntDTO);
				
		return result;
	}

	
}
