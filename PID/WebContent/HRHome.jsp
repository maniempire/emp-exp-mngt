<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.util.Collection"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
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
<script language="Javascript"> 
	function profileLogin(pass) {  
		document.Form1.action ="CommonPageAction.do?&check="+pass;
	}
	function manageEmp(pass){
		document.Form1.action ="EmployeeAction.do?&check"+pass;	
	}
	 
</script>
<link href="pim-styles.css" rel="stylesheet" type="text/css" />
</head>
<body onload="initScript();">
<form name="Form1" method="post">
<table width="1008" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="1010" class="header">
    <jsp:include page="header.jsp" />
    </td>
  </tr>
  <tr>
    <td height="2"></td>
  </tr>
  <tr>
     <td width="1010" height="29" class="hd-br">
    <jsp:include page="header-title.jsp" />
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
            <td class="Hol-head">Date</td>
            <td class="Hol-head">Day</td>
            <td class="Hol-head">Particulars</td>
            <td width="2">&nbsp;</td>
          </tr>
          <tr style=" height : 30px;">
            <td width="2">&nbsp;</td>
            <td width="50" class="Hol-table" style=" width : 59px;">1.</td>
            <td class="Hol-table">01/14/2011</td>
            <td class="Hol-table">Friday</td>
            <td class="Hol-table">Pongal</td>
            <td width="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <td width="50" class="Hol-table">2.</td>
            <td class="Hol-table">01/26/2011</td>
            <td class="Hol-table">Wednesday</td>
            <td class="Hol-table">Republic day</td>
            <td width="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <td width="50" class="Hol-table">3.</td>
            <td class="Hol-table">04/14/2011</td>
            <td class="Hol-table">Thursday</td>
            <td class="Hol-table">Dr. Ambedkar's Birthday/ Tamil Chithirai New Year</td>
            <td width="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <td class="Hol-table">4.</td>
            <td class="Hol-table">04/22/2011</td>
            <td class="Hol-table">Friday</td>
            <td class="Hol-table">Good Friday</td>
            <td width="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <td class="Hol-table">5.</td>
            <td class="Hol-table">08/15/2011</td>
            <td class="Hol-table">Monday</td>
            <td class="Hol-table">Independence day</td>
            <td width="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <td class="Hol-table">6.</td>
            <td class="Hol-table">08/31/2011</td>
            <td class="Hol-table">Wednesday</td>
            <td class="Hol-table">Ramjan</td>
            <td width="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <td class="Hol-table">7.</td>
            <td class="Hol-table">09/01/2011</td>
            <td class="Hol-table">Thursday</td>
            <td class="Hol-table">Vinayagar Chathurthi</td>
            <td width="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <td class="Hol-table">8.</td>
            <td class="Hol-table">10/05/2011</td>
            <td class="Hol-table">Wednesday</td>
            <td class="Hol-table">Ayutha Pooja</td>
            <td width="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="2">&nbsp;</td>
            <td class="Hol-table">9.</td>
            <td class="Hol-table">10/26/2011</td>
            <td class="Hol-table">Wednesday</td>
            <td class="Hol-table">Deepavali</td>
            <td width="2">&nbsp;</td>
          </tr>
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
