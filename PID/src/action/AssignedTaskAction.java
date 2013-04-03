package action;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bl.AssignedTaskBL;
import actionform.AssignedTaskForm;

public class AssignedTaskAction extends Action{

	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)throws IOException{
		String myAction = request.getParameter("check");
		String userId= null;
		HttpSession session =request.getSession();
		List result =new ArrayList();
		userId=session.getAttribute("USERID").toString();
		AssignedTaskForm assignedTaskForm = (AssignedTaskForm) form;
		AssignedTaskBL assignedTaskBL = new AssignedTaskBL();
		result = assignedTaskBL.empTask(userId);
		return(null);
	}
}
