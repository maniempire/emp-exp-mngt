package action;



import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import actionform.ApplyLeaveActionForm;
import bl.ApplyLeaveBL;

public class ApplyLeaveAction extends Action{
	
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
		String daysRequired=null;
		String startDate=null;
		String endDate=null;
		String reason=null;
		String name=null;
		String nextPage=null;
		String userId= null;
		String userEmailId= null;
		String userSupvEmailId= null;
		String userFname = null;
		
		ActionErrors errors = new ActionErrors();
		
		try{
		
		HttpSession session =request.getSession();
		userId = session.getAttribute("USERID").toString();
		userEmailId = session.getAttribute("USEREMAIL").toString();
		userSupvEmailId = session.getAttribute("USERSUPVEMAIL").toString();
		userFname = session.getAttribute("USERFNAME").toString();
		ApplyLeaveActionForm applyLeaveActionForm = (ApplyLeaveActionForm)form;
		ApplyLeaveBL applyLeaveBL =new ApplyLeaveBL();
		daysRequired=applyLeaveActionForm.getDaysRequired();
		startDate=applyLeaveActionForm.getStartDate();
		endDate=applyLeaveActionForm.getEndDate();
		reason =applyLeaveActionForm.getReason();
		boolean result = applyLeaveBL.applyLeave(userId,userFname, userEmailId,userSupvEmailId,daysRequired,startDate,endDate,reason);
		if(result){
			System.out.println("Added sucessfully");
		}
		if(("15002").equals("USERTYPE")){
			nextPage="HRApplyLeave";
		}else if(("15001").equals("USERTYPE")){
			nextPage="ApplyLeave";
		}else if(("15000").equals("USERTYPE")){
			nextPage="ApplyLeave";
		}
		
		errors.add("PIMERROR", new ActionError("errors.pim.applyleave.success"));
		
		}catch(Exception e){
			
			e.printStackTrace();
			errors.add("PIMERROR", new ActionError(
			"errors.pim.internalerror"));
			
			nextPage="EXCEPTION";
		}
		
		if (!errors.isEmpty()) {
			saveErrors(request, errors);			
		} else {
		}
		
		return mapping.findForward("ApplyLeave");
	}

}
