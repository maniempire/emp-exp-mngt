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
<title>PIM - Home</title>
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
<form>
<table width="1008" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="1010" class="header"><table width="100%" border="0">
      <tr>
        <td width="700">&nbsp;</td>
        <td width="350">&nbsp;</td>
      </tr>
      <tr>
        <td width="700">&nbsp;</td>
        <td width="350" class="white-hd">Welcome Supervisor</td>
      </tr>
      <tr>
        <td width="700">&nbsp;</td>
        <td width="350">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="2"></td>
  </tr>
  <tr>
     <td width="1010" height="29" class="hd-br">
    <table width="991" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="845">
        
        <div class="menu_bar">
      <ul>
        <!--<li><a href="/">Home</a></li>-->

        <li><a href="/PID/CommonPageAction.do?check=sup_Profile" >My Profile</a>
          
        </li>
        <li><a href="##">Leave Management</a>
        <ul>
            <li><a href="SUP-apply-leave.jsp">My Leave</a></li>
<!--	     <li><a href="SUP-screening-request.jsp">Team Leave Request</a><li>-->
            <li><a href="SUP-request-report.jsp">Leave Report</a></li>
	    
          </ul>
          </li>
<li><a href="/PID/taskMgntAction.do?req=task_List">Task List</a></li>
    
           
      </ul>
      <span>      </span></div>        </td>
         <td width="107">Mar 17, 2001 |</td>
        <td width="39"><a href="log-in.jsp" style="color:#FFFFFF; text-decoration:none">Logout</a></td>
        </tr>
    </table>    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="9"> </td>
        <td width="8"><img src="images/login_top_lt.png" width="9" height="29" /></td>
        <td class="login-top-bg">Declared Holidays</td>
        <td width="8"><img src="images/login_top_rt.png" width="9" height="29" /></td>
        <td width="9"> </td>
      </tr>
      <tr>
        <td width="9"> </td>
        <td width="8" class="login-lt-br"> </td>
        <td><table width="100%" border="0" cellpadding="1" cellspacing="1">

          <tr>
            <td width="2" height="10"></td>
            <td height="10"></td>
            <td height="10"></td>
            <td height="10"></td>
            <td height="10"></td>
            <td width="2" height="10"></td>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <td width="50" class="Hol-head">S.No</td>
            <td width="120" class="Hol-head">Date</td>
            <td width="120" class="Hol-head">Day</td>
            <td class="Hol-head">Particulars</td>
            <td width="2">&nbsp;</td>
          </tr>

<!--          <tr>-->
<!--            <td width="2">&nbsp;</td>-->
<!--            <td width="50" class="Hol-table">&nbsp;</td>-->
<!--            <td width="120" class="Hol-table"><label></label></td>-->
<!--            <td width="120" class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td width="2">&nbsp;</td>-->
<!--          </tr>-->
          <tr>
            <td width="2">&nbsp;</td>
            <td width="50" class="Hol-table">&nbsp;</td>
            <td width="120" class="Hol-table">&nbsp;</td>
            <td width="120" class="Hol-table">&nbsp;</td>
            <td class="Hol-table">&nbsp;</td>
            <td width="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <td width="50" class="Hol-table">&nbsp;</td>
            <td width="120" class="Hol-table">&nbsp;</td>
            <td width="120" class="Hol-table">&nbsp;</td>
            <td class="Hol-table">&nbsp;</td>
            <td width="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <td class="Hol-table">&nbsp;</td>
            <td width="120" class="Hol-table">&nbsp;</td>
            <td width="120" class="Hol-table">&nbsp;</td>
            <td class="Hol-table">&nbsp;</td>
            <td width="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <td class="Hol-table">&nbsp;</td>
            <td width="120" class="Hol-table">&nbsp;</td>
            <td width="120" class="Hol-table">&nbsp;</td>
            <td class="Hol-table">&nbsp;</td>
            <td width="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <td class="Hol-table">&nbsp;</td>
            <td width="120" class="Hol-table">&nbsp;</td>
            <td width="120" class="Hol-table">&nbsp;</td>
            <td class="Hol-table">&nbsp;</td>
            <td width="2">&nbsp;</td>
          </tr>
          <tr>
<!--            <td width="2">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td width="120" class="Hol-table">&nbsp;</td>-->
<!--            <td width="120" class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td width="2">&nbsp;</td>-->
          </tr>
          <tr>
<!--            <td width="2">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td width="120" class="Hol-table">&nbsp;</td>-->
<!--            <td width="120" class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td width="2">&nbsp;</td>-->
          </tr>
<!--          <tr>-->
<!--            <td width="2">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td width="120" class="Hol-table">&nbsp;</td>-->
<!--            <td width="120" class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td width="2">&nbsp;</td>-->
<!--          </tr>-->
           <tr>
            <td width="2" height="10"></td>
            <td height="10"></td>
            <td height="10"></td>
            <td height="10"></td>
            <td height="10"></td>
            <td width="2" height="10"></td>
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
  <tr></tr>
  <tr></tr>
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
</html:html>
