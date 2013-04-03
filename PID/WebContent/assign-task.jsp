<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%>
<%@ taglib uri="/WEB-INF/struts-nested.tld" prefix="nested"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-template.tld" prefix="template"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<html:html>
<head>

<% String currentURL="http://" + request.getServerName() + ":" + request.getServerPort() +  request.getContextPath();  %>
<script type="text/javascript" src="<%=currentURL%>/scripts/jquery-1.4.3.min.js"></script>
<script type="text/javascript" src="<%=currentURL%>/scripts/jquery.datepick.js"></script>
<link href="<%=currentURL%>/styles/jquery.datepick.css" rel="stylesheet" type="text/css" />

<script language="javascript">


jQuery(document).ready(function () {	
    $('#taskStartDateId').datepick();
    $('#taskEndDateId').datepick();    
}); 

function initPreformattedValues(){
	
	//Start Date
	if(document.getElementById("taskStartDateId").value=="Click to select Date"){
	document.taskMgntActionForm.taskStartDateId.style.color="#999999";
	}else{
	document.taskMgntActionForm.taskStartDateId.style.color="#000";
	}

	//End Date
	if(document.getElementById("taskEndDateId").value=="Click to select Date"){
	document.taskMgntActionForm.taskEndDateId.style.color="#999999";
	}else{
	document.taskMgntActionForm.taskEndDateId.style.color="#000";
	}
	
}



function verify() {
var themessage = "You are required to complete the following fields:" +"\n";
if (document.form.TaskTitle.value=="") {
themessage = themessage + " - Task Title" +"\n";
}
if (document.form.Description.value=="") {
themessage = themessage + " -  Task Description" +"\n";
}
if (document.form.Startdate.value=="") {
themessage = themessage + " -  Start Date" +"\n";
}
if (document.form.Enddate.value=="") {
	themessage = themessage + " -  End Date" +"\n";
	}
if (themessage == "You are required to complete the following fields:" +"\n" ) {
	document.form.submit();
	}
	else {
	alert(themessage);
	return false;
	   }
	}

function submitTaskMgntAction(action){

	document.taskMgntActionForm.hiddenAction.value=action;
	document.taskMgntActionForm.submit();

	
	}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PIM - Assign Task</title>
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

<body onload="initScript();initPreformattedValues();">
<html:form action="/taskMgntAction" method="post" name="taskMgntActionForm" type="actionForm.TaskMgntActionForm">
<html:hidden property="hiddenAction" name="taskMgntActionForm"/>

<table width="1010" border="0" cellpadding="0" cellspacing="0">
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
    <td><table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="9"> </td>
        <td width="8"><img src="images/login_top_lt.png" width="9" height="29" /></td>
        <td class="login-top-bg">Assign Task</td>
        <td width="8"><img src="images/login_top_rt.png" width="9" height="29" /></td>
        <td width="9"> </td>
      </tr>
      <tr>
        <td width="9"> </td>
        <td width="8" class="login-lt-br"> </td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="5" height="10"></td>
            <td width="194" height="10"></td>
            <td width="252" height="10"></td>
            <td width="5" height="10"></td>
            <td width="8" height="10"></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td width="194" class="form-cont">Task Title</td>
            <td class="form-cont">
            <html:text property="taskName" name="taskMgntActionForm"></html:text>
              
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td width="194" class="form-cont">Task Description</td>
            <td class="form-cont">
              <html:textarea property="description" name="taskMgntActionForm"></html:textarea>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td width="194" class="form-cont">Start Date</td>
            <td class="form-cont">
            
              <html:text styleId="taskStartDateId" property="taskStartDate" styleClass="datetb" name="taskMgntActionForm" 
            value="Click to select Date" size="20" onclick="javascript:return clickDateTextBox(this.value,this);initDateTextBox(this.value,this);">
            </html:text> 
   
<!--              <input name="Startdate" type="text" class="login-txt-bx" id="demo1"> </input>-->
              
            <span class="descriptions"></span>
            
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td width="194" class="form-cont">End Date</td>
            <td class="form-cont">
            <html:text styleId="taskEndDateId" property="taskEndDate" styleClass="datetb" name="taskMgntActionForm" 
            value="Click to select Date" size="20" onclick="javascript:return clickDateTextBox(this.value,this);initDateTextBox(this.value,this);">
            </html:text> 
            
<!--              <input name="Enddate"   class="login-txt-bx" id="demo2"></input>-->
               
            <span class="descriptions"></span>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td width="194" class="form-cont">Task Status</td>
            <td class="form-cont">
            <html:select property="taskStatus" name="taskMgntActionForm" style=" width : 97px;">
            <html:option value="select">Select</html:option>
            <html:option value="assigned">Assigned</html:option>
            <html:option value="opened">Opened</html:option>
            </html:select>
                        
           </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td class="form-cont">Task Person</td>
            
            <td class="form-cont">
              <select name="taskPerson" size="1" id="select">
                <option>Select Employee</option>
                <option>1003</option>
                <option>1005</option>
                            </select>
            </td>
            
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="5"></td>
            <td width="194" height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
            <td height="5"></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td width="194" class="form-cont">&nbsp;</td>
            <td><table width="100%" border="0">
              <tr>
                <td width="55"></td>
                
                <td><html:submit value="SAVE" styleClass="login-but" onclick="submitTaskMgntAction('SAVETASK')"></html:submit>&nbsp;&nbsp;&nbsp;<html:button property="back"  styleClass="login-but"  onclick="location.href='homeAction.do'" value="Cancel"></html:button></td>
              </tr>
            </table></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="8" class="login-rt-br"> </td>
        <td width="9"> </td>
      </tr>
      <tr>
        <td width="9" valign="bottom"> </td>
        <td width="8" valign="bottom"><img src="images/login_bot_lt.png" width="9" height="9" /></td>
        <td class="login-bot"> </td>
        <td width="8" valign="bottom"><img src="images/login_bot_rt.png" width="9" height="9" /></td>
        <td width="9" valign="bottom"> </td>
      </tr>
    </table></td>
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
