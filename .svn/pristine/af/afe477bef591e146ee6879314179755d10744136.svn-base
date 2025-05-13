<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<link rel="stylesheet" type="text/css" href="<c:url value="/css/menu.css"/>" />
<div id="headerbg">
<table width="950" border="0" align="center" cellpadding="0" cellspacing="0" class="headerTable" id="headerBarTable">
  <tr>
    <td class="loggedin"><a href="https://www.rtd-denver.com/"><img src="/operator/images/HeaderSpacer.gif" width="225" height="75" border="0" /></a></td>
	<!-- due to request CHG0126833, Nataly requested the RTD logo link pointing to RTD website and not Operators website -->
    <!-- <sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_OPERATOR_EMP,ROLE_OPERATOR_CONT,ROLE_LOGGEDIN">
    	<td class="loggedin"><a href="/operator/secure/index.do"><img src="/operator/images/HeaderSpacer.gif" width="225" height="75" border="0" /></a></td>
    </sec:authorize>
    <sec:authorize ifNotGranted="ROLE_LOGGEDIN">
    	<td class="notloggedin"><a href="/operator/index.do"><img src="/operator/images/HeaderSpacer.gif" width="225" height="75" border="0" /></a></td>
    </sec:authorize> -->
  </tr>
</table>


<table width="950" border="0" align="center" cellpadding="0" cellspacing="0" class="mainNavTable" id="navBarTable">
  <tr>
	<td>
    	<div style="display: table-row;">
            <div id="productsandservices" class="yuimenubar yuimenubarnav" style="float:left">
                <div class="bd">
                   <sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_OPERATOR_EMP,ROLE_OPERATOR_CONT,ROLE_LOGGEDIN">
                    <ul class="first-of-type">
                        <li class="yuimenubaritem first-of-type"><a class="yuimenubaritemlabel mainNav" href="/operator/secure/index.do">OPERATOR INFO</a></li>
                        <li class="yuimenubaritem first-of-type"><a class="yuimenubaritemlabel mainNav" href="#">OPERATOR BULLETIN INFO</a></li> 
                        <li class="yuimenubaritem first-of-type"><a class="yuimenubaritemlabel mainNav" href="#">RUNBOARD INFO</a></li>
                        <li class="yuimenubaritem first-of-type"><a class="yuimenubaritemlabel mainNav" href="#">RTD RELATED INFO</a></li>  
                        <sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_OPERATOR_EMP,ROLE_OPERATOR_CONT,ROLE_LOGGEDIN" >
                        	<li class="yuimenubaritem first-of-type"><a class="yuimenubaritemlabel mainNav" href="/operator/j_spring_security_logout">SIGN OFF</a></li>
                        </sec:authorize>
			              
                    </ul>
                    </sec:authorize>
                </div>
            </div>
		</div>
    </td>
    <td valign="top"><img src="/operator/images/clear_spacer.gif" height="10" /></td>
    <td width="209" valign="top">&nbsp;</td>
  </tr>
</table>
</div>
