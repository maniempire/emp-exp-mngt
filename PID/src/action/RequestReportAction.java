package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import actionform.RequestReportForm;
import bl.RequestReportBL;

public class RequestReportAction extends Action{

	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)throws IOException{
		
		String requestParam = null;
		String myAction = request.getParameter("check");
		requestParam = request.getParameter("req");
		List result= new ArrayList();
		String nextPage = null;
		List leaveList = null;
		boolean isPDFReport = false;
		HttpSession session = null;
		session = request.getSession(true);
		RequestReportForm requestReportForm = (RequestReportForm)form;
		RequestReportBL requestReportBL = new RequestReportBL();
		String userId= session.getAttribute("USERID").toString();
		
		if(requestParam.equals("empReport")){
			leaveList = (List)requestReportBL.empLeaveReport(userId);
			requestReportForm.setLeaveList(leaveList);
			nextPage = "SUCCESS";
		}else if(requestParam.equals("emp_Leave_List")){
			
			leaveList = (List)requestReportBL.getLeaveList();
			requestReportForm.setLeaveList(leaveList);
			
			nextPage = "SUCCESS";
			
		}else if(myAction.equals("Report")){
			isPDFReport =requestReportBL.getLeaveReport(userId);
		}
		
		session.setAttribute("REPORT", result);
	
		//return mapping.findForward("RequestReport");
		
		return mapping .findForward(nextPage);
	}
	
}
