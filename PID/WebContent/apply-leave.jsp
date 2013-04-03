<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<% String currentURL="http://" + request.getServerName() + ":" + request.getServerPort() +  request.getContextPath();  %>
<script type="text/javascript" src="<%=currentURL%>/scripts/jquery-1.4.3.min.js"></script>
<script type="text/javascript" src="<%=currentURL%>/scripts/jquery.datepick.js"></script>

<script language = "Javascript">

jQuery(document).ready(function () {	
    $('#startDateId').datepick();
    $('#endDateId').datepick();    
}); 

function initPreformattedValues(){
	
	//Start Date
	if(document.getElementById("startDateId").value=="Click to select Date"){
	document.form.startDateId.style.color="#999999";
	}else{
	document.form.startDateId.style.color="#000";
	}

	//End Date
	if(document.getElementById("endDateId").value=="Click to select Date"){
	document.form.endDateId.style.color="#999999";
	}else{
	document.form.endDateId.style.color="#000";
	}
	
}



function verify() {
var themessage = "You are required to complete the following fields:"+"\n";
if (document.form.daysRequired.value=="") {
themessage = themessage + " - No of Days Required";
}
if (document.form.startDate.value=="") {
themessage = themessage + " -  Start Date";
}
if (document.form.endDate.value=="") {
themessage = themessage + " -  End Date";
}
if (document.form.reason.value=="") {
	themessage = themessage + " -  Reason";
	}
if (themessage == "You are required to complete the following fields:"+"\n" ) {
document.form.action="ApplyLeaveAction.do";
}
else {
alert(themessage);
return false;
   }
}
function assignedTask(pass){
	document.form.action="AssignedTaskAction.do?&check="+pass;

}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PIM - Apply Leave</title>
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
<link href="<%=currentURL%>/styles/jquery.datepick.css" rel="stylesheet" type="text/css" />
</head>

<body onload="initScript();initPreformattedValues();">
<form   name="form" method="post" >
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
        <td class="login-top-bg">Apply Leave</td>
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
            <td width="194" class="form-cont">Number of Days Required</td>
            <td class="form-cont">
            <input name="daysRequired" type="text" class="login-txt-bx" id="textfield"  />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td width="194" class="form-cont">Start Date</td>
            <td class="form-cont">
            <input class="datetb" id="startDateId"  name="startDate" value="Click to select Date"
                                      type="text" size="22"
                               onclick="javascript:return clickDateTextBox(this.value,this);initDateTextBox(this.value,this);"/>
            
<!--              <input name="startDate" type="text" class="login-txt-bx" id="textfield" />-->
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td width="194" class="form-cont">End Date</td>
            <td class="form-cont">
<!--              <input name="endDate" type="text" class="login-txt-bx" id="textfield3" />-->
                         <input class="datetb" id="endDateId"  name="endDate" value="Click to select Date"
                                      type="text" size="22"
                               onclick="javascript:return clickDateTextBox(this.value,this);initDateTextBox(this.value,this);"/>
              
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
<!--            <td width="194" class="form-cont">From OTE</td>-->
<!--            <td><table width="150" border="0">-->
<!--              <tr>-->
<!--                <td width="15" class="form-cont"><input name="radiobutton" type="radio" value="radiobutton" /></td>-->
<!--                <td width="50" class="form-cont">Yes</td>-->
<!--                <td width="15" class="form-cont"><input name="radiobutton" type="radio" value="radiobutton" /></td>-->
<!--                <td width="50" class="form-cont">No</td>-->
<!--              </tr>-->
<!--            </table></td>-->
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td width="194" class="form-cont">Reason</td>
            <td class="form-cont">
              <textarea name="reason" class="login-txt-bx" id="textfield4"></textarea>
           </td>
            <td>&nbsp;</td>
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
                <td width="55"><input name="Apply" type="submit" class="login-but"   value="Apply" onclick="verify();"/></td>
                <td width="60"></td>
                
                <td>
                <html:button property="back" styleClass="login-but" onclick="location.href='homeAction.do'" value="Cancel"></html:button>
<!--                <input name="Cancel" type="submit" class="login-but"   value="Cancel" />-->
                </td>
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
    <td><table cellpadding="0" border="0" width="700"cellspacing="0">
    <tr><td width="280"></td>
    <td><span class="return-error-message-text"><html:errors /></span></td>
    
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
    <td class="hd-br"><jsp:include page="footer.jsp" /></td>
  </tr>
</table>
</form>
</body>
</html>
