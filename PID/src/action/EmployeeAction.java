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

import actionform.EmployeeForm;
import bl.EmployeeBL;
import dto.EmployeeDTO;

public class EmployeeAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
	
EmployeeBL employeeBL = new EmployeeBL();
		
		EmployeeDTO profileDTO = null;
		String nextPage = null;
	
		HttpSession session = null;
		
		ActionErrors errors = new ActionErrors();
		ActionForward forward = new ActionForward();
		EmployeeForm  employeeForm = (EmployeeForm)form;
		
		String userId = null;
		//String address = null;
		
		String hiddenAction = null;
		String requestParam = null;
		
		List empList = null;
		
		boolean resultSts = false;
		
		String empId=null;
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
		
		try {
			
			session = request.getSession(true); 
			
			hiddenAction = employeeForm.getHiddenAction();
			
			if(hiddenAction != null){
				
				if(hiddenAction.equals("ADDEMP")){
	
						nextPage = "ADD";
						employeeForm = null;
						
					
				}
				else if(hiddenAction.equals("MODIFY")){
	
						nextPage = "MODIFY";
					
				}else if(hiddenAction.equals("saveNewEmp")){
					
					employeeBL=new EmployeeBL();
					userId=employeeForm.getEmpId();
					firstName=employeeForm.getFirstName();
					lastName=employeeForm.getLastName();
					empRole=employeeForm.getEmpType();
					empDesc=employeeForm.getDesignation();
					team=employeeForm.getTeam();
					reportingTo=employeeForm.getReportingTo();
					empEmail=employeeForm.getOfficeMail();
					empPwd=employeeForm.getNewPwd();
					dob=employeeForm.getDob();
					doj=employeeForm.getDoj();
					active=employeeForm.getRadiobutton();
					gender=employeeForm.getGender();
					bloodGroup=employeeForm.getBloodGroup();
					empCell=employeeForm.getCellNumber();
					empLandLine=employeeForm.getLandLine();
					empPersonalMail=employeeForm.getPersonalMail();
					empAddress=employeeForm.getPermanentAddress();
					empTempAddress=employeeForm.getContactAddress();
					empAcc=employeeForm.getAccNumber();
					empPf=employeeForm.getPfNumber();
					reliving=employeeForm.getReliving();
					
					boolean resultsts = employeeBL.saveUser(userId,firstName,lastName, empRole,empDesc,team,reportingTo,empEmail,
							empPwd,dob,doj,active,gender,bloodGroup,empCell,empLandLine,empPersonalMail,
							empAddress,empTempAddress,empAcc,empPf,reliving);
					
					empList = (List)employeeBL.getEmpList(userId);
					
					employeeForm.setEmpList(empList);
					
					nextPage = "SUCCESS";
					
					errors.add("PIMERROR", new ActionError("errors.pim.employee.add.success"));
					
				}else if(hiddenAction.equals("Modify_emp")){
					String hiddenEmpId = employeeForm.getEmpHiddenId();
					EmployeeDTO employeeDTO = new EmployeeDTO();
					employeeDTO= employeeBL.getEmpData(hiddenEmpId);
					
					employeeForm.setEmpId(employeeDTO.getEmpId());
					employeeForm.setFirstName(employeeDTO.getFirstName());
					employeeForm.setLastName(employeeDTO.getLastName());
					employeeForm.setEmpRole(employeeDTO.getEmpRole());
					employeeForm.setDesignation(employeeDTO.getDesignation());
					employeeForm.setDept(employeeDTO.getDept());
					employeeForm.setReportingTo(employeeDTO.getReportingTo());
					employeeForm.setOfficeMail(employeeDTO.getOfficeMail());
					employeeForm.setDob(employeeDTO.getDob());
					employeeForm.setDoj(employeeDTO.getDoj());
					employeeForm.setGender(employeeDTO.getGender());
					employeeForm.setBloodGroup(employeeDTO.getBloodGroup());
					employeeForm.setNewPwd(employeeDTO.getOldPassword());
					employeeForm.setLandLine(employeeDTO.getLandLine());
					employeeForm.setCellNumber(employeeDTO.getCellNumber());
					employeeForm.setPersonalMail(employeeDTO.getPersonalMail());
					employeeForm.setPermanentAddress(employeeDTO.getPermanentAddress());
					employeeForm.setContactAddress(employeeDTO.getContactAddress());
					employeeForm.setAccNumber(employeeDTO.getAccNumber());
					employeeForm.setPfNumber(employeeDTO.getPfNumber());
					
					employeeForm.setHiddenAction(null);
					nextPage = "MODIFY";
					errors.add("PIMERROR", new ActionError("errors.pim.employee.modify.success"));
					
				}else if(hiddenAction.equals("UpdateEmp")){
					userId=employeeForm.getEmpId();
					firstName=employeeForm.getFirstName();
					lastName=employeeForm.getLastName();
					empRole=employeeForm.getEmpType();
					empDesc=employeeForm.getDesignation();
					team=employeeForm.getTeam();
					reportingTo=employeeForm.getReportingTo();
					empEmail=employeeForm.getOfficeMail();
					empPwd=employeeForm.getNewPwd();
					dob=employeeForm.getDob();
					doj=employeeForm.getDoj();
				//	active=employeeForm.getRadiobutton();
					gender=employeeForm.getGender();
					bloodGroup=employeeForm.getBloodGroup();
					empCell=employeeForm.getCellNumber();
					empLandLine=employeeForm.getLandLine();
					empPersonalMail=employeeForm.getPersonalMail();
					empAddress=employeeForm.getPermanentAddress();
					empTempAddress=employeeForm.getContactAddress();
					empAcc=employeeForm.getAccNumber();
					empPf=employeeForm.getPfNumber();
					reliving=employeeForm.getReliving();
					
					boolean resultsts = employeeBL.updateEmpData(userId,firstName,lastName, empRole,empDesc,team,reportingTo,empEmail,
							empPwd,dob,doj,active,gender,bloodGroup,empCell,empLandLine,empPersonalMail,
							empAddress,empTempAddress,empAcc,empPf,reliving);
					
					empList = (List)employeeBL.getEmpList(userId);
					
					employeeForm.setEmpList(empList);
					
					nextPage = "SUCCESS";
					
				}else if(hiddenAction.equals("cancelEmp")){
					

					userId = (String)session.getAttribute("USERID");
					
					empList = (List)employeeBL.getEmpList(userId);
					
					employeeForm.setEmpList(empList);
					
					nextPage = "SUCCESS";
						
				}else{
					
				}
				
				
			}else{
				
				requestParam = request.getParameter("req");
				
				if(requestParam != null){
					
					if(requestParam.equals("emp_List")){
						

						userId = (String)session.getAttribute("USERID");
						
						empList = (List)employeeBL.getEmpList(userId);
						
						employeeForm.setEmpList(empList);
						
						nextPage = "SUCCESS";
					}else if(requestParam.equals("emp_report")){
						
						userId = (String)session.getAttribute("USERID");
						
						empList = (List)employeeBL.getEmpList(userId);
						
						employeeForm.setEmpList(empList);
						
						nextPage = "EMPREPORT";
						
					}
					
				}
				
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			errors.add("PIMERROR", new ActionError(
			"errors.pim.internalerror"));
			
			nextPage="EXCEPTION";
		}
		
		if (!errors.isEmpty()) {
			saveErrors(request, errors);
		} else {
		}
		
		//employeeForm.setHiddenAction(null);
		
		forward = mapping.findForward(nextPage);
		
		return forward;
	}

}
