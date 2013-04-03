package action;

import java.util.Calendar;
import java.util.Collection;
import java.util.GregorianCalendar;
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

import dto.TaskMgntDTO;

import actionform.TaskMgntActionForm;
import bl.TaskMgntBL;

public class TaskMgntAction extends Action{

	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){

		
		TaskMgntBL taskMgntBL = new TaskMgntBL();
		
		TaskMgntDTO profileDTO = null;
		String nextPage = null;
	
		HttpSession session = null;
		
		ActionErrors errors = new ActionErrors();
		ActionForward forward = new ActionForward();
		TaskMgntActionForm taskMgntActionForm = (TaskMgntActionForm)form;
		
		String userId = null;
		//String address = null;
		
		String hiddenAction = null;
		String requestParam = null;
		
		List taskList = null;
		
		boolean resultSts = false;
		
		try {
			
			session = request.getSession(true); 
			
			hiddenAction = taskMgntActionForm.getHiddenAction();
			
			if(hiddenAction != null){
				
				if(hiddenAction.equals("ADDTASK")){
	
						nextPage = "ADDTASK";
						//taskMgntActionForm.setHiddenAction(null);
					
				}
				else if(hiddenAction.equals("SAVETASK")){
					Calendar cal = new GregorianCalendar();
				    int month = cal.get(Calendar.MONTH);
				    int year = cal.get(Calendar.YEAR);
				    int day = cal.get(Calendar.DAY_OF_MONTH);
				   
				    String currentDate = (+ year + "-" + day  + "-" +(month + 1));
				    System.out.println(currentDate);
					TaskMgntDTO taskMgntDTO = new TaskMgntDTO();
					String assineeId =session.getAttribute("USERID").toString();
					taskMgntDTO.setCurrentDate(currentDate);
					taskMgntDTO.setTaskAssigneeId(assineeId);
					taskMgntDTO.setTaskName(taskMgntActionForm.getTaskName());
					taskMgntDTO.setDescription(taskMgntActionForm.getDescription());
					taskMgntDTO.setTaskStartDate(taskMgntActionForm.getTaskStartDate());
					taskMgntDTO.setTaskEndDate(taskMgntActionForm.getTaskEndDate());
					taskMgntDTO.setTaskstatus(taskMgntActionForm.getTaskStatus());
					taskMgntDTO.setTaskAssignedId(taskMgntActionForm.getTaskPerson());
					boolean result =taskMgntBL.saveTask(taskMgntDTO);
					if(result){
						nextPage = "SAVETASK";
					}
						
					
				}
				
				
			}else{
				
				requestParam = request.getParameter("req");
				
				if(requestParam != null){
					
					if(requestParam.equals("assign_task")){
						

						userId = (String)session.getAttribute("USERID");
						
						taskList = (List)taskMgntBL.getTaskList(userId);
						
						taskMgntActionForm.setTaskList(taskList);
						
						nextPage = "SUCCESS";
					} else if(requestParam.equals("task_List")){
						
						userId = (String)session.getAttribute("USERID");
						
						taskList = (List)taskMgntBL.getTaskList(userId);
						
						taskMgntActionForm.setTaskList(taskList);
						
						nextPage = "SUCCESS";
						
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
		
		
		forward = mapping.findForward(nextPage);
		
		return forward;
	}
	
	
	
}
