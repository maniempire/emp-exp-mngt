package bl;

import java.util.List;
import java.util.ArrayList;

import dao.EmployeeDAO;
import dao.RequestReportDAO;
public class RequestReportBL {

	public List empLeaveReport(String userId){
		List result = new ArrayList();
		RequestReportDAO requestReportDAO = new RequestReportDAO();
		result =requestReportDAO.empLeaveReport(userId);
		return result;
	}
	
	public boolean getLeaveReport(String userId){
		boolean result = false;
		//List result = new ArrayList();
		RequestReportDAO requestReportDAO = new RequestReportDAO();
		result = requestReportDAO.getLeaveReport(userId);
		return result;
	}

	public List getLeaveList() {
		RequestReportDAO requestReportDAO = new RequestReportDAO();
		
		List leaveList = requestReportDAO.getLeaveList();
		
		return leaveList;
	}

}
