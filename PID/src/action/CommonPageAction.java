package action;

import java.util.ArrayList;

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

import actionform.CommonPageActionForm;
import bl.CommonPageBL;

public class CommonPageAction extends Action {

	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){

		ActionErrors errors = new ActionErrors();
		String userId=null;
		String firstName = null;
		String lastName =null;
		String empRole=null;
		String empDesc=null;
		String deptDesc=null;
		String empSupvId=null;
		String empEmail=null;
		String dob=null;
		String hireDate=null;
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
		String nextPage=null;
		String myAction = request.getParameter("check");
		 try{
		
		
		HttpSession session =request.getSession();
		List result =new ArrayList();
		CommonPageActionForm commonPageActionForm =new CommonPageActionForm();
		CommonPageBL commonPageBL = new CommonPageBL();
		userId= session.getAttribute("USERID").toString();
		if(myAction.equals("ManageEmp")){
			
			result = commonPageBL.manageEmp(userId);
			
			commonPageActionForm.setEmpList(result);
			
		}else if(myAction.equals("Profile")){
			result = commonPageBL.profileList(userId);
			if(result.get(1)!=null){
				firstName=result.get(1).toString();
				session.setAttribute("FIRSTNAME", firstName);
			}
			if(result.get(2)!=null){
				lastName=result.get(2).toString();
				session.setAttribute("LASTNAME", lastName);
			}
			if(result.get(3)!=null){
				empRole=result.get(3).toString();
				session.setAttribute("EMPROLE", empRole);
			}
			if(result.get(4)!=null){
				 empDesc=result.get(4).toString();
				session.setAttribute("EMPDESC",  empDesc);
			}
			if(result.get(5)!=null){
				deptDesc=result.get(5).toString();
				session.setAttribute("DEPTDESC", deptDesc);
			}
			if(result.get(6)!=null){
				empSupvId=result.get(6).toString();
				session.setAttribute("EMPSUPVID", empSupvId);
			}
			if(result.get(7)!=null){
				empEmail=result.get(7).toString();
				session.setAttribute("EMPMAIL", empEmail);
			}
			if(result.get(8)!=null){
				dob=result.get(8).toString();
				session.setAttribute("DOB", dob);
			}
			if(result.get(9)!=null){
				hireDate=result.get(9).toString();
				session.setAttribute("HIREDATE", hireDate);
			}
			if(result.get(10)!=null){
				gender=result.get(10).toString();
				session.setAttribute("GENDER", gender);
			}if(result.get(11)!=null){
				bloodGroup=result.get(11).toString();
				session.setAttribute("BLOODGROUP", bloodGroup);
			}
			if(result.get(12)!=null){
				empPwd=result.get(12).toString();
				session.setAttribute("EMPPWD", empPwd);
			}
			if(result.get(13)!=null){
				empLandLine=result.get(13).toString();
				session.setAttribute("LANDLINE", empLandLine);
			}if(result.get(14)!=null){
				empCell=result.get(14).toString();
				session.setAttribute("MOBILE", empCell);
			}if(result.get(15)!=null){
				empPersonalMail=result.get(15).toString();
				session.setAttribute("PERSONALMAIL", empPersonalMail);
			}if(result.get(16)!=null){
				empAddress=result.get(16).toString();
				session.setAttribute("ADDRESS", empAddress);
			}if(result.get(17)!=null){
				empTempAddress=result.get(17).toString();
				session.setAttribute("TEMPADDRESS", empTempAddress);
			}if(result.get(18)!=null){
				empAcc=result.get(18).toString();
				session.setAttribute("EMPACC", empAcc);
			}if(result.get(19)!=null){
				empPf	=result.get(19).toString();
				session.setAttribute("EMPPF",empPf );
			}
			/*commonPageActionForm.getUserName();
			commonPageActionForm.getFirstName();
			commonPageActionForm.getLastName();
			commonPageActionForm.getEmpType();
			commonPageActionForm.getDesignation();
			commonPageActionForm.getTeam();
			commonPageActionForm.getReportingTo();
			commonPageActionForm.getOfficeMail();
			commonPageActionForm.getDob();
			commonPageActionForm.getDoj();
			commonPageActionForm.getGender();
			commonPageActionForm.getBloodGroup();
			commonPageActionForm.getOldPassword();
			commonPageActionForm.getCellNumber();
			commonPageActionForm.getLandLine();
			commonPageActionForm.getPersonalMail();
			commonPageActionForm.getPermanentAddress();
			commonPageActionForm.getContactAddress();
			commonPageActionForm.getNewPwd();
			commonPageActionForm.getConfirmPwd();
			commonPageActionForm.getAccNumber();
			commonPageActionForm.getPfNumber();*/
		}else if (myAction.equals("sup_Profile")){
			result = commonPageBL.profileList(userId);
			if(result.get(1)!=null){
				firstName=result.get(1).toString();
				session.setAttribute("FIRSTNAME", firstName);
			}
			if(result.get(2)!=null){
				lastName=result.get(2).toString();
				session.setAttribute("LASTNAME", lastName);
			}
			if(result.get(3)!=null){
				gender=result.get(3).toString();
				session.setAttribute("GENDER", gender);
			}
			if(result.get(4)!=null){
				 empDesc=result.get(4).toString();
				session.setAttribute("EMPDESC",  empDesc);
			}
			if(result.get(5)!=null){
				deptDesc=result.get(5).toString();
				session.setAttribute("DEPTDESC", deptDesc);
			}
			if(result.get(6)!=null){
				empSupvId=result.get(6).toString();
				session.setAttribute("EMPSUPVID", empSupvId);
			}
			if(result.get(7)!=null){
				empEmail=result.get(7).toString();
				session.setAttribute("EMPMAIL", empEmail);
			}
			if(result.get(8)!=null){
				dob=result.get(8).toString();
				session.setAttribute("DOB", dob);
			}
			if(result.get(9)!=null){
				hireDate=result.get(9).toString();
				session.setAttribute("HIREDATE", hireDate);
			}
			if(result.get(10)!=null){
				gender=result.get(10).toString();
				session.setAttribute("GENDER", gender);
			}if(result.get(11)!=null){
				bloodGroup=result.get(11).toString();
				session.setAttribute("BLOODGROUP", bloodGroup);
			}
			if(result.get(12)!=null){
				empPwd=result.get(12).toString();
				session.setAttribute("EMPPWD", empPwd);
			}
			if(result.get(13)!=null){
				empLandLine=result.get(13).toString();
				session.setAttribute("LANDLINE", empLandLine);
			}if(result.get(14)!=null){
				empCell=result.get(14).toString();
				session.setAttribute("MOBILE", empCell);
			}if(result.get(15)!=null){
				empPersonalMail=result.get(15).toString();
				session.setAttribute("PERSONALMAIL", empPersonalMail);
			}if(result.get(16)!=null){
				empAddress=result.get(16).toString();
				session.setAttribute("ADDRESS", empAddress);
			}if(result.get(17)!=null){
				empTempAddress=result.get(17).toString();
				session.setAttribute("TEMPADDRESS", empTempAddress);
			}if(result.get(18)!=null){
				empAcc=result.get(18).toString();
				session.setAttribute("EMPACC", empAcc);
			}if(result.get(19)!=null){
				empPf	=result.get(19).toString();
				session.setAttribute("EMPPF",empPf );
			}
		}
			
			String type = session.getAttribute("USERTYPE").toString();
			if(type.equals("15002") && myAction.equals("Profile")){
				nextPage="PROFILELIST";
			//}else if(type.equals("15001")&& myAction.equals("sup_Profile")){
			}else if(type.equals("15001")&& myAction.equals("Profile")){
				nextPage="PROFILELIST";
			}else if((type).equals("15000")&& myAction.equals("Profile") ){
				nextPage="PROFILELIST";
			}else if((type).equals("15002") && myAction.equals("ManageEmp")){
				nextPage="HRMANAGEEMPLOYEE";
			}
			 
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
		
		 
		return mapping.findForward(nextPage);
	}
}
