<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script language="javascript" type="text/javascript" src="datetimepicker.js"></script>
<SCRIPT LANGUAGE="JavaScript">
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
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PIM - Modify Task</title>
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

<body onload="initScript();">
<form  name=form method="post" action="">
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
        <td class="login-top-bg">Modify Task</td>
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
              <input name="TaskTitle" type="text" class="login-txt-bx" id="textfield2" />
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
              <textarea name="Description" class="login-txt-bx" id="textfield4"></textarea>
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
              <input name="Startdate" type="text" class="login-txt-bx" id="cal"></input> <a href="javascript:NewCal('cal','ddmmmyyyy',true,24)"> <img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"/></a>
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
              <input name="Enddate" type="text" class="login-txt-bx" id="cal1"></input> <a href="javascript:NewCal('cal1','ddmmmyyyy',true,24)"> <img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"/></a>
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
              <select name="select4" size="1" id="select4">
                <option>Assigned</option>
                <option selected="selected">Opened</option>
                <option>Completed</option>
                  </select>
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
              <select name="select" size="1" id="select">
                <option>Select Employee</option>
                  </select>
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
                <td width="55"><input name="Save" type="submit" class="login-but"   value="Save" onclick="verify();" /></td>
                
                <td><input name="Cancel" type="submit" class="login-but"   value="Cancel" /></td>
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
</form>
</body>
</html>
