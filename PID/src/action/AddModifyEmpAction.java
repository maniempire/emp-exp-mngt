package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import actionform.CommonPageActionForm;
import bl.AddModifyEmpBL;
import bl.EmployeeBL;

public class AddModifyEmpAction extends Action{

	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)throws IOException{
		
		EmployeeBL employeeBL=null;
		
		String userId=null;
		String firstName = null;
		String lastName =null;
		String empRole=null;
		String empDesc=null;
		String team=null;
		String reportingTo=null;
		String active=null;
		String empSupvId=null;
		String empEmail=null;
		String dob=null;
		String doj=null;
		String gender=null;
		String bloodGroup=null;
		String empPwd=null;
		String empLandLine=null;
		String empCell=null;
		String empPersonalMail=null;
		String empAddress=null;
		String empTempAddress=null;
		String empAcc=null;
		String empPf=null;
		String reliving=null;
		String nextPage=null;
		String myAction = request.getParameter("check");
		CommonPageActionForm commonPageActionForm = (CommonPageActionForm)form;
		AddModifyEmpBL addModifyEmpBL = new AddModifyEmpBL();
		
		userId=commonPageActionForm.getUserName();
		firstName=commonPageActionForm.getFirstName();
		lastName=commonPageActionForm.getLastName();
		empRole=commonPageActionForm.getEmpType();
		empDesc=commonPageActionForm.getDesignation();
		team=commonPageActionForm.getTeam();
		reportingTo=commonPageActionForm.getReportingTo();
		empEmail=commonPageActionForm.getOfficeMail();
		empPwd=commonPageActionForm.getNewPwd();
		dob=commonPageActionForm.getDob();
		doj=commonPageActionForm.getDoj();
		active=commonPageActionForm.getRadiobutton();
		gender=commonPageActionForm.getGender();
		bloodGroup=commonPageActionForm.getBloodGroup();
		empCell=commonPageActionForm.getCellNumber();
		empLandLine=commonPageActionForm.getLandLine();
		empPersonalMail=commonPageActionForm.getPersonalMail();
		empAddress=commonPageActionForm.getPermanentAddress();
		empTempAddress=commonPageActionForm.getContactAddress();
		empAcc=commonPageActionForm.getAccNumber();
		empPf=commonPageActionForm.getPfNumber();
		reliving=commonPageActionForm.getReliving();
		
		boolean result;
		if(myAction.equals("saveNewEmp")){
			
		result = addModifyEmpBL.saveUser(userId,firstName,lastName, empRole,empDesc,team,reportingTo,empEmail,
				empPwd,dob,doj,active,gender,bloodGroup,empCell,empLandLine,empPersonalMail,
				empAddress,empTempAddress,empAcc,empPf,reliving);
		nextPage="ADD";
		//employeeBL= new EmployeeBL();
		//List empList= (List)employeeBL.getEmpList();
		
		}else{
		result = addModifyEmpBL.updateUser(userId,firstName,lastName, empRole,empDesc,team,reportingTo,empEmail,
				empPwd,dob,doj,active,gender,bloodGroup,empCell,empLandLine,empPersonalMail,
				empAddress,empTempAddress,empAcc,empPf,reliving);
		nextPage="MODIFY";
		}
		
		return mapping.findForward(nextPage);
	}
}
