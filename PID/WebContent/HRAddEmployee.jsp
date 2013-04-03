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
<title>PIM - Add Employee</title>
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
<% String currentURL="http://" + request.getServerName() + ":" + request.getServerPort() +  request.getContextPath();  %>
<script type="text/javascript" src="<%=currentURL%>/scripts/jquery-1.4.3.min.js"></script>
<script type="text/javascript" src="<%=currentURL%>/scripts/jquery.datepick.js"></script>
<link href="<%=currentURL%>/styles/jquery.datepick.css" rel="stylesheet" type="text/css" />

<link href="pim-styles.css" rel="stylesheet" type="text/css" />
<script language="Javascript"> 

jQuery(document).ready(function () {	
    $('#dojId').datepick();
    $('#dobId').datepick();    
}); 

function initPreformattedValues(){

	//Start Date
	if(document.getElementById("dojId").value=="Click to select Date"){
	document.employeeForm.dojId.style.color="#999999";
	}else{
	document.employeeForm.dojId.style.color="#000";
	}

	//End Date
	if(document.getElementById("dobId").value=="Click to select Date"){
	document.employeeForm.dobId.style.color="#999999";
	}else{
	document.employeeForm.dobId.style.color="#000";
	}
	
}



	function profileLogin(pass) {  
		document.Form1.action ="CommonPageAction.do?&check="+pass;
	}

	function saveNewEmp(action){

		document.employeeForm.hiddenAction.value=action;
		document.employeeForm.submit();
		
	}
	function cancelEmp(action){

		document.employeeForm.hiddenAction.value=action;
		document.employeeForm.submit();
		
	}

	
	</script>
</head>

<body onload="initScript();initPreformattedValues();">
<html:form action="/employeeAction" name="employeeForm" type="actionform.EmployeeForm"  method="post">
<html:hidden property="hiddenAction" name="employeeForm"/>
<table width="1008" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="1010" class="header"><jsp:include page="header.jsp" /></td>
  </tr>
  <tr>
    <td height="2"></td>
  </tr>
  <tr>
     <td width="1010" height="29" class="hd-br">
    <jsp:include page="header-title-home.jsp" />
    
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="9"> </td>
        <td width="8"><img src="images/login_top_lt.png" width="9" height="29" /></td>
        <td class="login-top-bg">Add Employee</td>
        <td width="8"><img src="images/login_top_rt.png" width="9" height="29" /></td>
        <td width="9"> </td>
      </tr>
      <tr>
        <td width="9"> </td>
        <td width="8" class="login-lt-br"> </td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="10"></td>
            <td height="10"></td>
            <td height="10"></td>
            <td height="10"></td>
            <td height="10"></td>
            <td height="10"></td>
            <td height="10"></td>
            <td height="10"></td>
          </tr>
          <tr>
            <td width="15">&nbsp;</td>
            <td width="125" class="form-cont">Employee ID</td>
            <td width="180" class="form-cont">
            <html:text property="empId" name="employeeForm"></html:text>
<!--            <input name="userName" type="text" class="login-txt-bx" id="textfield15" />-->
            </td>
            <td width="75" class="form-cont">&nbsp;</td>
            <td class="form-cont">D.O.B</td>
            <td class="form-cont">
            <html:text styleId="dobId" property="dob" styleClass="datetb" name="employeeForm" 
            value="Click to select Date" size="20" onclick="javascript:return clickDateTextBox(this.value,this);initDateTextBox(this.value,this);">
            </html:text> 
            
<!--            <input name="dob" type="text" class="login-txt-bx" id="textfield6" />-->
            </td>
            <td width="15" class="login-cont">&nbsp;</td>
          </tr>
           <tr>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
          </tr>
          <tr>
            <td width="15">&nbsp;</td>
            <td width="125" class="form-cont">First Name</td>
            <td width="180" class="form-cont">
            <html:text property="firstName" name="employeeForm"></html:text>
<!--            <input name="firstName" type="text" class="login-txt-bx" id="textfield2" />-->
            </td>
            <td width="75" class="form-cont">&nbsp;</td>
            <td class="form-cont">Gender</td>
            <td class="form-cont">
            <html:select property="gender" name="employeeForm">
            <html:option value="MALE">MALE</html:option>
            <html:option value="FEMALE">FEMALE</html:option>
            </html:select>
<!--            <select name="gender" size="1" id="select4">-->
<!--              <option>MALE</option>-->
<!--              <option>FEMALE</option>-->
<!--              <option selected="selected">Select Gender</option>-->
<!--                </select>-->
                </td>
            <td width="15" class="login-cont">&nbsp;</td>
          </tr>
         <tr>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
          </tr>
          <tr>
            <td width="15">&nbsp;</td>
            <td width="125" class="form-cont">Last Name</td>
            <td width="180" class="form-cont">
            <html:text property="lastName" name="employeeForm"></html:text>
<!--            <input name="lastName" type="text" class="login-txt-bx" id="textfield" />-->
            </td>
            <td width="75" class="form-cont">&nbsp;</td>
            <td class="form-cont">Blood Group</td>
            <td class="form-cont">
            <html:select property="bloodGroup" name="employeeForm">
            <html:option value="A +ve">A +ve</html:option>
            <html:option value="O +ve">O +ve</html:option>
            <html:option value="O -ve">O -ve</html:option>
            </html:select>
<!--            <select name="bloodGroup" size="1" id="select5">-->
<!--              <option>A +ve</option>-->
<!--              <option>O +ve</option>-->
<!--              <option>O -ve</option>-->
<!--              <option selected="selected">Select Blood Group</option>-->
<!--                </select>-->
                </td>
            <td width="15" class="login-cont">&nbsp;</td>
          </tr>
          <tr>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
          </tr>
          <tr>
            <td width="15">&nbsp;</td>
            <td width="125" class="form-cont">Employee Type</td>
            <td width="180" class="form-cont">
            <html:select property="empType" name="employeeForm">
            <html:option value="SELECT">Select Employee Type</html:option>
            <html:option value="USER"></html:option>
            <html:option value="SUPERVISOR">SUPERVISOR</html:option>
            </html:select>
<!--            <select name="empType" size="1" id="select">-->
<!--              <option>Select Employee Type</option>-->
<!--              <option>USER</option>-->
<!--              <option>SUPERVISOR</option>                  </select>-->
                                                                                                       
            </td>
            <td width="75" class="form-cont">&nbsp;</td>
            <td class="form-cont">Mobile Phone</td>
            <td class="form-cont">
            <html:text property="cellNumber" name="employeeForm"></html:text>
<!--            <input name="cellNumber" type="text" class="login-txt-bx" id="textfield7" />-->
            </td>
            <td width="15" class="login-cont">&nbsp;</td>
          </tr>
          <tr>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
          </tr>
          <tr>
            <td width="15">&nbsp;</td>
            <td width="125" class="form-cont">Designation</td>
            <td width="180" class="form-cont">
            <html:text property="designation" name="employeeForm"></html:text>
<!--            <input name="designation" type="text" class="login-txt-bx" id="textfield2" />-->
            </td>
            <td width="75" class="form-cont">&nbsp;</td>
            <td class="form-cont">Residence Phone</td>
            <td class="form-cont">
            <html:text property="landLine" name="employeeForm"></html:text>
<!--            <input name="landLine" type="text" class="login-txt-bx" id="textfield8" />-->
            </td>
            <td width="15" class="login-cont">&nbsp;</td>
          </tr>
          <tr>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
          </tr>
          <tr>
            <td width="15">&nbsp;</td>
            <td width="125" class="form-cont">Team</td>
            <td width="180" class="form-cont">
            <html:select property="team" name="employeeForm">
            <html:option value="DATABASE">DATABASE</html:option>
            <html:option value="DATABASE">JAVA</html:option>
                        
            </html:select>
<!--            <select name="team" size="1" id="select2">-->
<!--              <option>Select Team</option>-->
<!--              <option>DATABASE</option>-->
<!--              <option>JAVA</option>-->
<!--              <option>TRAINING</option>-->
<!--                                    </select>-->
                                    </td>
            <td width="75" class="form-cont">&nbsp;</td>
            <td class="form-cont">Personal Email</td>
            <td class="form-cont">
            <html:text property="personalMail" name="employeeForm"></html:text>
<!--            <input name="personalMail" type="text" class="login-txt-bx" id="textfield9" />-->
            </td>
            <td width="15" class="login-cont">&nbsp;</td>
          </tr>
          <tr>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
          </tr>
          <tr>
            <td width="15">&nbsp;</td>
            <td width="125" class="form-cont">Reporting To</td>
            <td width="180" class="form-cont">
            <input name="reportingTo" type="text" id="textfield2" />
<!--            <input name="reportingTo" type="text" class="login-txt-bx" id="textfield2" />-->
<!--		<html:select property="reportingTo" name="employeeForm">-->
<!--			<html:option value="select"></html:option>-->
<!--			-->
<!--			<html:option value="BBBBB">BBBBB</html:option>-->
<!--			<html:option value="DDDDD">DDDDD</html:option>-->
<!--			<html:option value="FFFFF">FFFFF</html:option>-->
<!--		-->
<!--		</html:select>-->
<!--            <select name="reportingTo" size="1" id="select3">-->
<!--              <option selected="selected">Select Reporting To</option>-->
<!--              <option>BBBBB</option>-->
<!--              <option>DDDDD</option>-->
<!--              <option>FFFFF</option>-->
<!--            </select>-->
            </td>
            <td width="75" class="form-cont">&nbsp;</td>
            <td class="form-cont">Permanent Address</td>
            <td class="form-cont">
            <html:text property="permanentAddress" name="employeeForm"></html:text>
<!--            <input name="permanentAddress" type="text" class="login-txt-bx" id="textfield10" />-->
            </td>
            <td width="15" class="login-cont">&nbsp;</td>
          </tr>
          <tr>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
          </tr>
          <tr>
            <td width="15">&nbsp;</td>
            <td width="125" class="form-cont">Official Email</td>
            <td width="180" class="form-cont">
            <html:text property="officeMail" name="employeeForm"></html:text>
<!--            <input name="officeMail" type="text" class="login-txt-bx" id="textfield3" />-->
            </td>
            <td width="75" class="form-cont">&nbsp;</td>
            <td class="form-cont">Contact  Address </td>
            <td class="form-cont">
            <html:text property="contactAddress" name="employeeForm"></html:text>
<!--            <input name="contactAddress" type="text" class="login-txt-bx" id="textfield11" />-->
            </td>
            <td width="15" class="login-cont">&nbsp;</td>
          </tr>
          <tr>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
          </tr>
          <tr>
            <td width="15">&nbsp;</td>
            <td width="125" class="form-cont">Password</td>
            <td width="180" class="form-cont">
            <html:password property="newPwd" name="employeeForm"></html:password>
<!--            <input name="newPwd" type="text" class="login-txt-bx" id="textfield4" />-->
            </td>
            <td width="75" class="form-cont">&nbsp;</td>
            <td class="form-cont">Account Number</td>
            <td class="form-cont">
            <html:text property="accNumber" name="employeeForm"></html:text>
<!--            <input name="accNumber" type="text" class="login-txt-bx" id="textfield12" />-->
            </td>
            <td width="15" class="login-cont">&nbsp;</td>
          </tr>
          <tr>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
          </tr>
          <tr>
            <td width="15">&nbsp;</td>
            <td width="125" class="form-cont">Date of Joining</td>
            <td width="180" class="form-cont"> 
                  
            <html:text styleId="dojId" property="doj" styleClass="datetb" name="employeeForm" 
            value="Click to select Date" size="20" onclick="javascript:return clickDateTextBox(this.value,this);initDateTextBox(this.value,this);">
            </html:text> 
                       
<!--            <input name="doj" type="text" class="login-txt-bx" id="textfield5" />-->
            </td>
            <td width="75" class="form-cont">&nbsp;</td>
            <td class="form-cont">PF Number</td>
            <td class="form-cont">
            <html:text property="pfNumber" name="employeeForm" ></html:text>
<!--            <input name="pfNumber" type="text" class="login-txt-bx" id="textfield13" />-->
            </td>
            <td width="15" class="login-cont">&nbsp;</td>
          </tr>
          <tr>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
            <td height="3"></td>
          </tr>
          <tr>
            <td width="15">&nbsp;</td>
            <td width="125" class="form-cont">Employee Active</td>
            <td width="180" class="form-cont"><table width="150" border="0" class="form-cont">
              <tr>
                <td width="15">
                Yes<html:radio property="radiobutton" value="Yes" name="employeeForm"></html:radio>
                
                </td>
<!--                <input name="radiobutton" type="radio" value="yes" />-->
                
<!--                <td width="50">Yes</td>-->
                <td width="15">
                No<html:radio property="radiobutton" name="employeeForm" value="No"></html:radio>
<!--                <input name="radiobutton" type="radio" value="no" />-->
                </td>
<!--                <td width="50">No</td>-->
              </tr>
            </table></td>
            <td width="75" class="form-cont">&nbsp;</td>
<!--            <td class="form-cont">Relieved Date</td>-->
            <td class="form-cont"></td>
            <td width="15" class="login-cont">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td class="form-cont">&nbsp;</td>
            <td class="form-cont">&nbsp;</td>
            <td class="form-cont">&nbsp;</td>
            <td class="form-cont">&nbsp;</td>
            <td class="form-cont"><table width="100%" border="0">
              <tr>
                <td width="75"><input name="Save" type="submit" class="login-but" value="Save" onclick="saveNewEmp('saveNewEmp')"/></td>
                <td><input name="Save" type="submit" class="login-but" value="Cancel" onclick="cancelEmp('cancelEmp')"/></td>
              </tr>
            </table></td>
            <td class="login-cont">&nbsp;</td>
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
