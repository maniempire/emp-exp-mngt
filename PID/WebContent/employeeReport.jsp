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
<title>PIM - Employee Report</title>
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
	function setEmpId(empId){
		
		document.employeeForm.empHiddenId.value=empId;
		document.employeeForm.hiddenAction.value="Modify_emp";
		document.employeeForm.submit();
	}
	function printpage() 
	  { 
	   window.print(); 
	  } 
	 </script>
<link href="pim-styles.css" rel="stylesheet" type="text/css" />
</head>

<body onload="initScript();">
<html:form action="/employeeAction" name="employeeForm" type="actionform.EmployeeForm"  method="post">
<html:hidden property="hiddenAction" name="employeeForm"/>
<html:hidden property="empHiddenId" name="employeeForm"/>
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
    <jsp:include page="header-title-home.jsp" />
    
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
<!--
  <tr>
    <td align="right"><table width="100%" border="0">
      <tr>
        <td width="20%" valign="top"><table width="180" border="0" align="left" cellpadding="0" cellspacing="0">
          <tr>
            <td width="7"></td>
            <td width="9"><img src="images/login_top_lt.png" width="9" height="29" /></td>
            <td width="723" class="login-top-bg">Search</td>
            <td width="9"><img src="images/login_top_rt.png" width="9" height="29" /></td>
            <td width="9"></td>
          </tr>
          <tr>
            <td width="7"></td>
            <td width="9" class="login-lt-br"></td>
            <td valign="top" class="search">Emp Name/ID</td>
            <td width="9" class="login-rt-br"></td>
            <td width="9"></td>
          </tr>
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td valign="top" class="search"><select name="select4" size="1" class="search" id="select4">
              <option>Select</option>
                        </select></td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td valign="top" class="search">Designation</td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td valign="top" class="search"><span class="form-cont">
              <input name="textfield" type="text" class="search-txt-bx" id="textfield" />
            </span></td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td valign="top" class="search">Department</td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td valign="top" class="search"><select name="select" size="1" class="search" id="select">
              <option>Select</option>
            </select></td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td valign="top" class="search">Employee Type</td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td valign="top" class="form-cont"><span class="search">
              <select name="select2" size="1" class="search" id="select2">
                <option>Select</option>
              </select>
            </span></td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td valign="top" class="search">Employee Status</td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td valign="top" class="search"><select name="select3" size="1" class="search" id="select3">
              <option>Select</option>
            </select></td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
          
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td height="10" valign="top"></td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td valign="top" class="search"><input name="Reset" type="submit" class="login-but"   value="Reset" /></td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td height="10" valign="top" ></td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td valign="top" class="search"><input name="Search" type="submit" class="login-but"   value="Search" /></td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td>&nbsp;</td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
-->

          <tr>
            <td width="7" valign="bottom"></td>
            <td width="9" valign="bottom"><img src="images/login_bot_lt.png" width="9" height="9" /></td>
            <td class="login-bot"></td>
            <td width="9" valign="bottom"><img src="images/login_bot_rt.png" width="9" height="9" style=" width : 9px;"/></td>
            <td width="9" valign="bottom"></td>
          </tr>
        </table>

        <td width="1%">&nbsp;</td>
        <td width="79%"><table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="7"></td>
            <td width="9"><img src="images/login_top_lt.png" width="9" height="29" /></td>
            <td width="723" class="login-top-bg">Employee Report</td>
            <td width="9"><img src="images/login_top_rt.png" width="9" height="29" /></td>
            <td width="9"></td>
          </tr>
          <tr>
            <td width="7"></td>
            <td width="9" class="login-lt-br"></td>
            <td valign="top"><table width="750" border="0" cellpadding="1" cellspacing="1">
                <tr>
                  <td width="1" height="10"></td>
                  <td height="10"></td>
                  <td height="10"></td>
                  <td width="77" height="10"></td>
                  <td width="71" height="10"></td>
                  <td></td>
                  <td width="123"></td>
                  <td width="45"></td>
                  <td width="115"></td>
                  <td width="9" height="10"></td>
                </tr>
                <tr>
                  <td width="1">&nbsp; <td width="29" class="Hol-head" style=" width : 31px;">S.No</td>
                  <td width="54" class="Hol-head">Emp ID</td>
                  <td width="77" class="Hol-head">First Name</td>
                  <td width="71" class="Hol-head">Last Name</td>
                  <td width="95" class="Hol-head">Emp Type</td>
                  <td class="Hol-head">Designation</td>
                  <td width="45" class="Hol-head">Dept</td>
                  <td class="Hol-head">Reporting To</td></td>
                 
                  </tr>
                  
                  <logic:iterate id="empListId" indexId="i"
							name="employeeForm" property="empList">

							<tr ondblclick="setEmpId('<bean:write
								name="empListId" property="empId" />')">
								<td width="2">&nbsp;</td>
								<td width="32" class="Hol-table"><%=i.intValue() + 1%></td>
								<td width="94" class="Hol-table"><bean:write
									name="empListId" property="empId" /></td>
								<td class="Hol-table"><bean:write name="empListId"
									property="firstName" /></td>
								<td class="Hol-table"><bean:write name="empListId"
									property="lastName" /></td>
								<td width="117" class="Hol-table"><bean:write
									name="empListId" property="empRole" /></td>
								<td width="117" class="Hol-table"><bean:write
									name="empListId" property="designation" /></td>
								<td width="117" class="Hol-table"><bean:write
									name="empListId" property="dept" /></td>
								<td width="117" class="Hol-table"><bean:write
									name="empListId" property="reportingTo" /></td>
								<td width="2">&nbsp;</td>
							</tr>
						</logic:iterate>
<!--                <tr>-->
<!--                  <td width="1">&nbsp;</td>-->
<!--                  <td width="29" class="Hol-table">&nbsp;</td>-->
<!--                  <td width="54" class="Hol-table">&nbsp;</td>-->
<!--                  <td width="77" class="Hol-table">&nbsp;</td>-->
<!--                  <td width="71" class="Hol-table">&nbsp;</td>-->
<!--                  <td width="95" class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td width="45" class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  </tr>-->
<!--                <tr>-->
<!--                  <td width="1">&nbsp;</td>-->
<!--                  <td width="29" class="Hol-table">&nbsp;</td>-->
<!--                  <td width="54" class="Hol-table">&nbsp;</td>-->
<!--                  <td width="77" class="Hol-table">&nbsp;</td>-->
<!--                  <td width="71" class="Hol-table">&nbsp;</td>-->
<!--                  <td width="95" class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td width="45" class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  </tr>-->
               
                
                
                
                
<!--                <tr>-->
<!--                  <td width="1">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  </tr>-->
<!--                <tr>-->
<!--                  <td width="1">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  <td class="Hol-table">&nbsp;</td>-->
<!--                  </tr>-->
                <tr>
                  <td width="1" height="10"></td>
                  <td height="10"></td>
                  <td height="10"></td>
                  <td height="10"></td>
                  <td width="71" height="10"></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  </tr>
            </table></td>
            <td width="9" class="login-rt-br"></td>
            <td width="9"></td>
          </tr>
          <tr>
            <td></td>
            <td class="login-lt-br"></td>
            <td><table width="100%" border="0">
                <tr>
                  <td width="714">&nbsp;
                  
                  </td>
                  <td width="80" style=" width : 168px;">
<!--                  <a href="HRAddEmployee.jsp" class="login-but"  style=" width : 52px;">Add New User</a>-->
                  </td>
                  <td>
                  <input type="button" class="login-but" value="Print" onclick="printpage();"/>
                  </td>
                 
		  <td width="80">
<!--		  <input name="Modify" type="submit" onclick="window.location.href='HR-modify-employee.jsp'" class="login-but"   value="Modify" />-->
		  </td>
                  <td width="80">
<!--                  <input name="Cancel" type="submit" class="login-but"   value="Cancel" />-->
                  </td>
                </tr>
            </table></td>
            <td class="login-rt-br"></td>
            <td></td>
          </tr>
          <tr>
            <td width="7" valign="bottom"></td>
            <td width="9" valign="bottom"><img src="images/login_bot_lt.png" width="9" height="9" /></td>
            <td class="login-bot"></td>
            <td width="9" valign="bottom"><img src="images/login_bot_rt.png" width="9" height="9" /></td>
            <td width="9" valign="bottom"></td>
          </tr>
        </table></td>
      </tr>
    </table>
 
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