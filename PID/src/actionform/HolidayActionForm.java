package actionform;

import java.util.List;

import org.apache.struts.action.ActionForm;

public class HolidayActionForm extends ActionForm {

	private String date = null;
	
	private String day = null;
	
	private String reason = null;
	
	private List holidayList = null;

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public List getHolidayList() {
		return holidayList;
	}

	public void setHolidayList(List holidayList) {
		this.holidayList = holidayList;
	}
	
	
	
}
