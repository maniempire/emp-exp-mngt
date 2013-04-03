package bl;

import java.util.ArrayList;
import java.util.List;
import dao.ApplyLeaveDAO; 
import com.pid.util.*;

public class ApplyLeaveBL {

	public boolean applyLeave(String userId, String uFname, String userEmailId, String userSupvEmailId, String daysRequired, String startDate, String endDate, String reason){
		boolean result = false;
		SendMail sendMail = new SendMail();
		
		ApplyLeaveDAO applyLeaveDAO = new ApplyLeaveDAO();
		result = applyLeaveDAO.applyLeave(userId,daysRequired, startDate ,endDate,reason);
		if(result){
			try{
				sendMail.validateMail(uFname, userEmailId, userSupvEmailId, daysRequired, startDate, endDate, reason);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return result;
	}
}
