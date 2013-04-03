package bl;

import java.util.List;
import java.util.ArrayList;

import dao.AssignedTaskDAO;

public class AssignedTaskBL {
	List result = new ArrayList();
	
	public List empTask(String userId){
		AssignedTaskDAO assignedTaskDAO = new AssignedTaskDAO(); 
	result =assignedTaskDAO.empTask(userId);
		return(null);
	}
	

}
