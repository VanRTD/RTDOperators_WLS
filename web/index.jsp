<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta name="robots" content="noindex"/>
<sec:authorize ifAnyGranted="ROLE_OPERATOR_EMP,ROLE_OPERATOR_CONT,ROLE_USER,ROLE_LOGGEDIN,ROLE_ADMIN">	
	<c:redirect url="/operator/secure/index.do" />
</sec:authorize>

<style type="text/css">
<!--
table {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	text-decoration: none;
}
-->
</style>

<script language="JavaScript" type="text/javascript">
function ValidateForm() {
	if(document.OIPDisclaimer.Accept_Disclaimer.checked == "")
	{
	  alert("Please check the box to accept these terms.")
	  document.OIPDisclaimer.Accept_Disclaimer.focus();
	  return false;
	}
	else
	{
		// 20190614 - Jay B.  Had to change this after move to https.
		// It was permitting anyone to access the home page without being authenticated.
		//window.location = "/operator/getLoginForm.do"; //"/operator/secure/index.do";
		 return true;
	}
}

function Decline()
{
	// 20190614 - Jay B.  Changed this to redirect to the access denied page rather than the RTD site
	window.location = "/operator/403.jsp"; //"http://www.rtd-denver.com/";
}
</script>


<div id="mainContent">

<form id="form1" name="OIPDisclaimer" method="POST" action="index.do">
<table width="700" cellpadding="1" cellspacing="0" bgcolor="#000000" summary="Main table" align="center">
  <tr>
    <td><table width="100%" cellpadding="4" cellspacing="0" bgcolor="#FFFFFF" summary="Nested table">
      <tr>
        <td style="text-align:justify">
         <!-- Post maintenance alerts/messages here
		<div style="color:#FF0000">
		<h4>Due to a System Maintenance Outage this evening (8:00pm through 12:00am December 4, 2023) the OPERATOR INFORMATION PAGE & EXTRABOARD link will NOT be functional. Information displayed when accessing the link will NOT BE UP TO DATE.</br><br>
		PLEASE CHECK WITH YOUR DIVISION SUPERVISOR IN REGARD TO POTENTIAL UPCOMING ASSIGNMENTS FOR THIS EVENING (December 4, 2023).
		We apologize for the inconvenience this might cause. This outage will allow updates to take place for continued compliance with security requirements, as well as make the Oracle system current on the latest application and hardware updates.</h4>       
		</div> -->
         <p>All  information needed to perform the essential duties of the job are provided  at the workplace at the time when you  are on duty. Information provided on  this website is intended for your personal use and curiosity only. Some may, for personal reasons wish to have  this information during off duty times.  Please understand that the District does not expect work to be performed  during off duty times, nor is it authorized without specific approval of your  supervisor. Please contact your  supervisor or manager if you have any questions about whether activity during  off times is authorized or allowed.</p>
          <p>Some  operators may choose to cut/paste information from this website in order to  create their own versions of train cards or route maps. Again, this is not authorized and you will  not be paid for the time spent in creating these personal documents. On occasion, routes and schedules may be  modified during the course of a run board.  Operators are required to operate RTD routes according to the most  recent version of the train card and map.  Do not rely solely on self created documents without checking for  periodic updates. Over reliance on self  created documents may be viewed by RTD Management as a need for additional  training in order for operators to successfully perform their duties.</p>
          <p><strong>RTD  does not warrant the accuracy of the information on the website. Updates and corrections may be made without  notice.</strong><br />
          </p>
          <p><input type="checkbox" name="Accept_Disclaimer" id="checkbox" value="accepted"/> 
          I have read and accept these terms.<br /></p></td>
      </tr>
      <tr>
        <td style="text-align:center">
		  <input name="button" type="submit" id="button" value="Accept" ONCLICK="return ValidateForm();"> 
          <input name="button" type="button" id="button" value="Decline" onClick="Decline();">
          <br />
          <br /></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>

</div>