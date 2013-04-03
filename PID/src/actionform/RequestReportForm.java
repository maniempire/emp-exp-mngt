package actionform;

import java.util.List;

import org.apache.struts.action.ActionForm;

public class RequestReportForm extends ActionForm{

	private String sNo=null;
	private String type=null;
	private String fromDate=null;
	private String toDate=null;
	private String status=null;
	
	private List leaveList = null;
	
	/*public String =null;
	public String =null;*/
	public String getsNo() {
		return sNo;
	}
	public void setsNo(String sNo) {
		this.sNo = sNo;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getFromDate() {
		return fromDate;
	}
	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}
	public String getToDate() {
		return toDate;
	}
	public void setToDate(String toDate) {
		this.toDate = toDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public List getLeaveList() {
		return leaveList;
	}
	public void setLeaveList(List leaveList) {
		this.leaveList = leaveList;
	}

	
	
}
