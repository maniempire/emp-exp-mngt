package actionform;

import org.apache.struts.action.ActionForm;

public class ApplyLeaveActionForm extends ActionForm{

	public String daysRequired=null;
	public String startDate=null;
	public String endDate=null;
	public String reason=null;
	
	public String getDaysRequired() {
		return daysRequired;
	}
	public void setDaysRequired(String daysRequired) {
		this.daysRequired = daysRequired;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	
	
	
}
