package bl;


import java.util.List;
import java.util.ArrayList;

import dao.AddModifyEmpDAO;

public class AddModifyEmpBL {

	public boolean updateUser(String userId, String firstName, String lastName, String  empRole, String empDesc, String team, String reportingTo, String empEmail, String 
			empPwd, String dob, String doj, String active, String gender, String bloodGroup, String empCell, String empLandLine, String empPersonalMail,
			String empAddress, String empTempAddress, String empAcc, String empPf, String reliving){
		//List result = new ArrayList();
		boolean result;
		AddModifyEmpDAO addModifyEmpDAO = new AddModifyEmpDAO(); 
		result =addModifyEmpDAO.updateUser(userId,firstName,lastName, empRole,empDesc,team,reportingTo,empEmail,
				empPwd,dob,doj,active,gender,bloodGroup,empCell,empLandLine,empPersonalMail,
				empAddress,empTempAddress,empAcc,empPf,reliving);
		return result;
	}
	public boolean saveUser(String userId, String firstName, String lastName, String  empRole, String empDesc, String team, String reportingTo, String empEmail, String 
			empPwd, String dob, String doj, String active, String gender, String bloodGroup, String empCell, String empLandLine, String empPersonalMail,
			String empAddress, String empTempAddress, String empAcc, String empPf, String reliving){
		AddModifyEmpDAO addModifyEmpDAO = new AddModifyEmpDAO();
		boolean result ;
		result =addModifyEmpDAO.saveUser(userId,firstName,lastName, empRole,empDesc,team,reportingTo,empEmail,
				empPwd,dob,doj,active,gender,bloodGroup,empCell,empLandLine,empPersonalMail,
				empAddress,empTempAddress,empAcc,empPf,reliving);
		
		return result;
		
	}
}
