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
<title>PIM - Request Report</title>
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
		document.Form1.action ="CommonPageAction.do?&check"+pass;	
	}
	 function printpage() 
	  { 
	   window.print(); 
	  } 
</script>
<link href="pim-styles.css" rel="stylesheet" type="text/css" />
</head>

<body onload="initScript();">
<html:form action="/RequestReportAction" name="requestReportForm"  type="actionform.RequestReportForm" method="post">
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
        <td class="login-top-bg">Request Report</td>
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
            <td></td>
            <td></td>
            <td></td>
            </tr>
                  <tr>
            <td width="2">&nbsp;</td>
            <td width="50" class="Hol-head">S.No</td>
            <td class="Hol-head">Type</td>
            <td class="Hol-head">From Date</td>
            <td class="Hol-head">To Date</td>
<!--            <td class="Hol-head">From Time</td>-->
<!--            <td class="Hol-head">To Time</td>-->
            <td class="Hol-head">Status</td>
            </tr>
          <tr>
             <logic:iterate id="leaveListId" indexId="i"
							name="requestReportForm" property="leaveList">

							<tr>
								<td width="2">&nbsp;</td>
								<td width="32" class="Hol-table"><%=i.intValue() + 1%></td>
								<td width="94" class="Hol-table"><bean:write
									name="leaveListId" property="type" /></td>
								<td class="Hol-table"><bean:write name="leaveListId"
									property="fromDate" /></td>
								<td class="Hol-table"><bean:write name="leaveListId"
									property="toDate" /></td>
								<td width="117" class="Hol-table"><bean:write
									name="leaveListId" property="status" /></td>
								<td width="2">&nbsp;</td>
							</tr>
						</logic:iterate>

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
            <td width="2" height="10"></td>
          </tr>
        </table></td>
        <td width="8" class="login-rt-br"> </td>
        <td width="9"> </td>
      </tr>
      <tr>
        <td></td>
        <td class="login-lt-br"></td>
        <td><table width="100%" border="0">
          <tr>
            <td width="575">&nbsp;</td><td>
            <input type="button" value="Print" class="login-but" onclick="printpage();"/> 
            </td>
            <td>
            <html:button property="back" styleClass="login-but" onclick="location.href='homeAction.do'" value="Cancel"></html:button>
            </td>
<!--            <td width="75">-->
<!--            <input name="Search" type="submit" class="login-but"   value="Search" />-->
<!--            </td>-->
            <td width="125">
<!--            <input name="Cancel Request" type="submit" class="login-but"   value="Cancel Request" />-->
            </td>
            <td>
<!--            <input name="Cancel" type="submit" class="login-but"   value="Cancel" />-->
            </td>
          </tr>
        </table></td>
        <td class="login-rt-br"></td>
        <td></td>
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
