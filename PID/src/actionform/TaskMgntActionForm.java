package actionform;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import dto.TaskMgntDTO;

public class TaskMgntActionForm extends ActionForm {

	private String hiddenAction = null;
	
	private String taskId = null;
	private String taskName = null;
	private String taskAssignedId = null;
	private String taskAssigneeId = null;
	private String description = null;
	
	private String taskStartDate = null;
	private String taskEndDate = null;
	private String taskAssignedDate = null;
	private String taskStatus = null;
	private String taskTitle = null;
	
	private String updateDate = null;
	private String taskPerson = null;
	
	private TaskMgntDTO taskMgntDTO = null;	
	
	private List taskList = null; 
	
	
	
	public List getTaskList() {
		return taskList;
	}

	public void setTaskList(List taskList) {
		this.taskList = taskList;
	}

	public TaskMgntDTO getTaskMgntDTO() {
		return taskMgntDTO;
	}

	public void setTaskMgntDTO(TaskMgntDTO taskMgntDTO) {
		this.taskMgntDTO = taskMgntDTO;
	}

	public String getTaskId() {
		return taskId;
	}

	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public String getTaskAssignedId() {
		return taskAssignedId;
	}

	public void setTaskAssignedId(String taskAssignedId) {
		this.taskAssignedId = taskAssignedId;
	}

	public String getTaskAssigneeId() {
		return taskAssigneeId;
	}

	public void setTaskAssigneeId(String taskAssigneeId) {
		this.taskAssigneeId = taskAssigneeId;
	}

	public String getTaskStartDate() {
		return taskStartDate;
	}

	public void setTaskStartDate(String taskStartDate) {
		this.taskStartDate = taskStartDate;
	}

	public String getTaskEndDate() {
		return taskEndDate;
	}

	public void setTaskEndDate(String taskEndDate) {
		this.taskEndDate = taskEndDate;
	}

	public String getTaskAssignedDate() {
		return taskAssignedDate;
	}

	public void setTaskAssignedDate(String taskAssignedDate) {
		this.taskAssignedDate = taskAssignedDate;
	}

	
	public String getTaskStatus() {
		return taskStatus;
	}

	public void setTaskStatus(String taskStatus) {
		this.taskStatus = taskStatus;
	}

	

	public String getHiddenAction() {
		return hiddenAction;
	}

	public void setHiddenAction(String hiddenAction) {
		this.hiddenAction = hiddenAction;
	}

	public String getTaskTitle() {
		return taskTitle;
	}

	public void setTaskTitle(String taskTitle) {
		this.taskTitle = taskTitle;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	public String getTaskPerson() {
		return taskPerson;
	}

	public void setTaskPerson(String taskPerson) {
		this.taskPerson = taskPerson;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
@Override
public void reset(ActionMapping mapping, HttpServletRequest request) {
	this.hiddenAction=null;
	
}	
	
	
}
