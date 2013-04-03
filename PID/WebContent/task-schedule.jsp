<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%>
<%@ taglib uri="/WEB-INF/struts-nested.tld" prefix="nested"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-template.tld" prefix="template"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PIM - Task Schedule</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="pim-styles.css" rel="stylesheet" type="text/css" />
</head>

<script type="text/JavaScript">

function submitTaskMgntAction(action){

	document.taskMgntActionForm.hiddenAction.value=action;
	document.taskMgntActionForm.submit();

	
	}

</script>

<body onload="initScript();">
<html:form action="/taskMgntAction" method="post" name="taskMgntActionForm" type="actionForm.TaskMgntActionForm">

<html:hidden property="hiddenAction" name="taskMgntActionForm"/>
	<table width="500" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="1010"><jsp:include page="header.jsp" /></td>
		</tr>
		<tr>
			<td height="2"></td>
		</tr>
		<tr>
			<td class="hd-br">

			<jsp:include page="header-title-home.jsp" />
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
			<table width="700" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td width="9"></td>
					<td width="8"><img src="images/login_top_lt.png" width="9"
						height="29" /></td>
					<td class="login-top-bg">Task Schedule</td>
					<td width="8"><img src="images/login_top_rt.png" width="9"
						height="29" /></td>
					<td width="9"></td>
				</tr>
				<tr>
					<td width="9"></td>
					<td width="8" class="login-lt-br"></td>
					<td>
					<table width="700" border="0" cellpadding="1" cellspacing="1" align="center">
						<tr>
							<td width="2" height="10"></td>
							<td height="10"></td>
							<td height="10"></td>
							<td width="93" height="10"></td>
							<td width="82" height="10"></td>
							<td></td>
							<td width="90"></td>
							<td width="106"></td>
							
							
						</tr>
						<tr>
							<td width="2">&nbsp;</td>
							<td width="32" class="Hol-head">S.No</td>
							<td width="94" class="Hol-head">Assignee Name</td>
							<td class="Hol-head">Title</td>
							<td width="117" class="Hol-head">Assigned Date</td>
							<td class="Hol-head">Start Date</td>
							<td class="Hol-head">End Date</td>
							<td class="Hol-head">Status</td>
							<!--  <td class="Hol-head">Updated Date</td>  -->
							
						</tr>
						<logic:iterate id="taskListId" indexId="i"
							name="taskMgntActionForm" property="taskList">

							<tr>
								<td width="2">&nbsp;</td>
								<td width="32" class="Hol-table"><%=i.intValue() + 1%></td>
								<td width="94" class="Hol-table"><bean:write
									name="taskListId" property="taskName" /></td>
								<td class="Hol-table"><bean:write name="taskListId"
									property="taskAssigneeId" /></td>
								<td class="Hol-table"><bean:write name="taskListId"
									property="taskStartDate" /></td>
								<td width="117" class="Hol-table"><bean:write
									name="taskListId" property="taskEndDate" /></td>
									
									<td width="117" class="Hol-table"><bean:write
									name="taskListId" property="taskstatus" /></td>
									<td width="117" class="Hol-table"><bean:write
									name="taskListId" property="updateDate" /></td>
								<!-- <td class="Hol-table">&nbsp;</td> -->
								
								
							</tr>
						</logic:iterate>

						
						<tr>
<!--							<td width="2">&nbsp;</td>-->
<!--							<td width="32" class="Hol-table">&nbsp;</td>-->
<!--							<td width="94" class="Hol-table">&nbsp;</td>-->
<!--							<td class="Hol-table">&nbsp;</td>-->
<!--							<td class="Hol-table">&nbsp;</td>-->
<!--							<td width="117" class="Hol-table">&nbsp;</td>-->
<!--							<td class="Hol-table">&nbsp;</td>-->
<!--							<td class="Hol-table">&nbsp;</td>-->
<!--							<td class="Hol-table">&nbsp;</td>-->
<!--							<td width="2">&nbsp;</td>-->
						</tr>
						<tr>
							<td width="2" height="10"></td>
							<td height="10"></td>
							<td height="10"></td>
							<td height="10"></td>
							<td height="10"></td>
							<td></td>
							<td></td>
							<td></td>
						
						
						</tr>
					</table>
					</td>
					<td width="8" class="login-rt-br"></td>
					<td width="9"></td>
				</tr>
				<tr>
					<td></td>
					<td class="login-lt-br"></td>
					<td>
					<table width="100%" border="0">
						<tr>
							<td width="575">&nbsp;</td>
							<td width="50">
							<% 
							String userType = (String) session.getAttribute("USERTYPE"); 
						if(userType!=null && userType.equals("15001")){%>
						
							<html:submit value="ADD" styleClass="login-but" onclick="submitTaskMgntAction('ADDTASK')"></html:submit>
							<%} %>
							</td>
							
							

							<td><html:button property="back" styleClass="login-but" onclick="location.href='homeAction.do'" value="Cancel"></html:button></td>
							
						</tr>
					</table>
					</td>
					<td class="login-rt-br"></td>
					<td></td>
				</tr>
				<tr>
					<td width="9" valign="bottom"></td>
					<td width="8" valign="bottom"><img
						src="images/login_bot_lt.png" width="9" height="9" /></td>
					<td class="login-bot"></td>
					<td width="8" valign="bottom"><img
						src="images/login_bot_rt.png" width="9" height="9" /></td>
					<td width="9" valign="bottom"></td>
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td class="hd-br"><jsp:include page="footer.jsp" /></td>
		</tr>
	</table>
</html:form>
</body>
</html:html>
