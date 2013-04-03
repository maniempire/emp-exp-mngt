<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%><html xmlns="http://www.w3.org/1999/xhtml">
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
<link href="pim-styles.css" rel="stylesheet" type="text/css" />
<script language="Javascript"> 

function submitReport(val)
{
	alert(val);	
	document.leaveReport.action = "RequestReportAction.do?&check="+val;
	//document.leaveReport.submit();
}

function profileLogin(pass) {  
		document.Form1.action ="CommonPageAction.do?&check="+pass; 
	} 
function assignedTask(pass){
	document.Form1.action="AssignedTaskAction.do?&check="+pass;
}
function taskSchedule(pass){
	document.Form1.action="AssignedTaskAction.do?&check="+pass;
}

</script>
</head>

<body onload="initScript();">
<form   name="leaveReport" method="post" >
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
          
          <%
          Collection report = new ArrayList();
		 report = (ArrayList) session.getAttribute("REPORT");
		 System.out.println(report);
   		Iterator itr = report.iterator();
   		int i=0;
   		while (itr.hasNext()) {
   						
   			List newList = (List)itr.next();
   			System.out.println(newList.get(i));
   			System.out.println(newList.get(1));
   			i++;   
   			
   		
   		 %>
   			<tr>
            <td width="2">&nbsp;</td>
            <td width="50" class="Hol-table" >&nbsp;<%=i %></td>
            <td class="Hol-table" 	>&nbsp;<%=newList.get(0) %></td>
            <td class="Hol-table"><%=newList.get(1) %>&nbsp;</td>
            <td class="Hol-table"><%=newList.get(2) %>&nbsp;</td>
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
            <td class="Hol-table" ><%=newList.get(3) %>&nbsp;</td>
            </tr>
           
          <%} %>
<!--          <tr>-->
<!--            <td width="2">&nbsp;</td>-->
<!--            <td width="50" class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            </tr>-->
                  
          
<!--          <tr>-->
<!--            <td width="2">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            </tr>-->
<!--          <tr>-->
<!--            <td width="2">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            </tr>-->
<!--          <tr>-->
<!--            <td width="2">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            </tr>-->
<!--          <tr>-->
<!--            <td width="2">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            <td class="Hol-table">&nbsp;</td>-->
<!--            </tr>-->
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
            <td width="575">&nbsp;</td>
            <td width="75"><input name="Report" type="submit" class="login-but"   value="Report" onclick="submitReport('Report');" /></td>
            <td width="125"><input name="Cancel Request" type="submit" class="login-but"   value="Cancel Request" /></td>
            <td><html:button property="back" styleClass="login-but" onclick="location.href='homeAction.do'" value="Cancel"></html:button></td>
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
</form>
</body>
</html>
