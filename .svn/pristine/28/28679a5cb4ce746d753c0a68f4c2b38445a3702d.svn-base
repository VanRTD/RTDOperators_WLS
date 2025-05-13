<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ page import="org.springframework.security.ui.webapp.AuthenticationProcessingFilter"%>
<%@ page import="org.springframework.security.ui.AbstractProcessingFilter"%>
<%@ page import="org.springframework.security.AuthenticationException"%>

<div id="mainContent">
<div align="left">

<style type="text/css">
<!--
table {
	font-family: Tahoma, Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.bodyBlueHeadline2 {
	font-family: Tahoma, Verdana, Arial, Helvetica, sans-serif;
	font-size: 14px;
	color: #677ea9;
	font-weight: bold;
	line-height: 17px;
}
-->
</style>

<SCRIPT language="JavaScript">
function printDetour(id){
str=document.getElementById(id).innerHTML;
newwin=window.open('','printwin','left=100,top=100,width=400,height=400');
newwin.document.write('<HTML>\n<HEAD>\n');
newwin.document.write('<TITLE>Detour, Rider and Driver Alerts</TITLE>\n');
newwin.document.write('<script>\n');
newwin.document.write('function chkstate(){\n');
newwin.document.write('if(document.readyState=="complete"){\n');
newwin.document.write('window.close()\n');
newwin.document.write('}\n');
newwin.document.write('else{\n');
newwin.document.write('setTimeout("chkstate()",2000)\n');
newwin.document.write('}\n');
newwin.document.write('}\n');
newwin.document.write('function print_win(){\n');
newwin.document.write('window.print();\n');
newwin.document.write('chkstate();\n');
newwin.document.write('}\n');
newwin.document.write('<\/script>\n');
newwin.document.write('</HEAD>\n');
newwin.document.write('<BODY onload="print_win()">\n');
newwin.document.write(str);
newwin.document.write('</BODY>\n');
newwin.document.write('</HTML>\n');
newwin.document.close();
}
</SCRIPT>

<table width="950px" border="0" align="left" 
  cellpadding="0" cellspacing="0" class="bodyTable4" id="wrapperTable">
  
  <tr>
    <td>
    <TABLE WIDTH="750px" cellpadding="0" cellspacing="0">
	  <!-- Driver Alert -->
	  <TR style="text-align:center">
	    <TD class="bodyBlueHeadline2"><h3>Detour, Rider and Driver Alerts</h3>
	    <p style="font-size:12px;color:#000000"><strong>${dayOfWeek}, <fmt:formatDate value="<%= new java.util.Date() %>" type="both" timeStyle="short" dateStyle="short" /></strong></p></TD>
	    <TD style="text-align:right; vertical-align:middle">
	    <span style="cursor:pointer"><img src="../images/iconPrint.gif" border="0" title="Print this page" onclick="printDetour('mainContent')"></span><br />
        <a href="#" onclick="printDetour('mainContent')">Print</a>
	    </TD>
	  </TR>
	  <TR> 
	    <TD colspan="2">
	    <table width="100%" cellspacing="0" cellpadding="3" border="1" bordercolorlight="#FFFFFF" bordercolordark="#000000">			
	      <c:choose>
	      <c:when test="${fn:length(driverAlertItems) eq 0 and fn:length(stationPNRAlertItems) eq 0 and fn:length(driverDetourRouteItems) eq 0}">
	        <tr style="text-align:center">
	          <td colspan="2" style="color:#F00"><strong>Currently there are no Detour, Rider and Driver Alerts.</strong></td>
	        </tr>
	      </c:when>
	      <c:otherwise>
	        <tr style="text-align:center;background-color:#F0F0F0">
	          <td width="20%"><strong>Other Info/<br>Route(s)</strong></td>
	          <td><strong>Details</strong></td>
	        </tr>
	      </c:otherwise>
	      </c:choose>
	      
	      <!-- Driver Alerts, display general description details -->
	      <c:if test="${fn:length(driverAlertItems) ge 0}">
	      <c:forEach var="driverAlert" items="${driverAlertItems}">    
	      <tr style="vertical-align:top">
	        <td style="text-align:center"><strong>${driverAlert.generalDesc}</strong></td>
	        <td>
	        <table width="100%" border="0" cellpadding="0" cellspacing="2" class="alertDetails_NestedTable">
	          <tr>
	            <td><strong>Effective Dates:
	              ${driverAlert.startDate} 
	              <c:choose>
		              <c:when test="${driverAlert.startTimeType eq 2}">
		              TBD
		              </c:when>
		              <c:when test="${driverAlert.startTimeType eq 3 and not empty driverAlert.startTime}">
		              &nbsp;${driverAlert.startTime}
		              </c:when>
	              </c:choose>
	              <c:choose>
	                <c:when test="${not empty driverAlert.endDate}">
		              <c:choose>
		              	<c:when test="${driverAlert.endTimeType ne 1 or driverAlert.startDate ne driverAlert.endDate}">
		              	-
		              	</c:when>
		              </c:choose>
		              <c:choose>
		              	<c:when test="${driverAlert.startDate ne driverAlert.endDate}">
		              	${driverAlert.endDate} 
		              	</c:when>
		              </c:choose>
		              <c:choose>
		              	<c:when test="${driverAlert.endTimeType eq 2}">
		              	TBD
		              	</c:when>
		              	<c:when test="${driverAlert.endTimeType eq 3 and not empty driverAlert.endTime}">
		              	&nbsp;${driverAlert.endTime}
		              	</c:when>
		              </c:choose>
	                </c:when>
	                <c:otherwise>
	              	  - Permanent
	                </c:otherwise>
	              </c:choose>
	              </strong></td>
	            <td width="29%" style="text-align:right;font-size:10px">
				  <c:choose>
	              	<c:when test="${not empty driverAlert.updatedDate}">
	              	<strong>Updated: <fmt:formatDate value="${driverAlert.updatedDate}" pattern="MM/dd/yyyy" />&nbsp;${driverAlert.updatedTime}</strong>
	              	</c:when>
	              	<c:otherwise>&nbsp;</c:otherwise>
	              </c:choose>
				</td>
	            </tr>
	          <tr>
	            <td colspan="2">${driverAlert.alertEventInfo}</td>
	          </tr>
	        </table>
	        </td>
	      </tr>
	      </c:forEach>	
	      </c:if>
	      <!-- end Driver Alerts, display general description details -->
	      
	      <!-- Station/park-n-Ride Alert -->
	      <c:if test="${fn:length(stationPNRAlertItems) ge 0}">
	      <c:forEach var="stationPNRAlert" items="${stationPNRAlertItems}">
	      <tr style="vertical-align:top">
	        <td style="text-align:center"><strong>
	        <c:if test="${not empty stationPNRAlert.alertCatDetail}">
		      <c:choose>
		        <c:when test="${stationPNRAlert.alertCatID eq 1}">
		        Elevator outage at
		        </c:when>
		      </c:choose>
	        ${stationPNRAlert.alertCatDetail}
	        </c:if>
	        </strong></td>
	        <td>
	        <table width="100%" border="0" cellpadding="0" cellspacing="2" class="alertDetails_NestedTable">
	          <tr>
	            <td><strong>Effective Dates:
	              ${stationPNRAlert.startDate} 
	              <c:choose>
		              <c:when test="${stationPNRAlert.startTimeType eq 2}">
		              TBD
		              </c:when>
		              <c:when test="${stationPNRAlert.startTimeType eq 3 and not empty stationPNRAlert.startTime}">
		              &nbsp;${stationPNRAlert.startTime}
		              </c:when>
	              </c:choose>
	              <c:choose>
	                <c:when test="${not empty stationPNRAlert.endDate}">
		              <c:choose>
		              	<c:when test="${stationPNRAlert.endTimeType ne 1 or stationPNRAlert.startDate ne stationPNRAlert.endDate}">
		              	-
		              	</c:when>
		              </c:choose>
		              <c:choose>
		              	<c:when test="${stationPNRAlert.startDate ne stationPNRAlert.endDate}">
		              	${stationPNRAlert.endDate} 
		              	</c:when>
		              </c:choose>
		              <c:choose>
		              	<c:when test="${stationPNRAlert.endTimeType eq 2}">
		              	TBD
		              	</c:when>
		              	<c:when test="${stationPNRAlert.endTimeType eq 3 and not empty stationPNRAlert.endTime}">
		              	&nbsp;${stationPNRAlert.endTime}
		              	</c:when>
		              </c:choose>
	                </c:when>
	                <c:otherwise>
	              	  - Permanent
	                </c:otherwise>
	              </c:choose>
	              </strong></td>
	            <td width="29%" style="text-align:right;font-size:10px">
				  <c:choose>
	              	<c:when test="${not empty stationPNRAlert.updatedDate}">
	              	<strong>Updated: <fmt:formatDate value="${stationPNRAlert.updatedDate}" pattern="MM/dd/yyyy" />&nbsp;${stationPNRAlert.updatedTime}</strong>
	              	</c:when>
	              	<c:otherwise>&nbsp;</c:otherwise>
	              </c:choose>
				
				</td>
	            </tr>
	          <tr>
	            <td colspan="2">${stationPNRAlert.alertEventInfo}</td>
	          </tr>
	        </table>
	        </td>
	      </tr>
	      </c:forEach>
	      </c:if>
	      <!-- end Station/park-n-Ride Alert -->

	      <!-- Detour, Rider and Driver Alerts, display route details -->
	      <c:if test="${fn:length(driverDetourRouteItems) ge 0}">
	      <c:forEach var="drDtAlert" items="${driverDetourRouteItems}">
	      <c:choose>
	      	<c:when test="${drDtAlert.alertTypeID eq 1}">
	      	  <!-- when alert type is 1 which is Detour/Rider Alert -->
	      	  <tr style="vertical-align:top">
		        <td style="text-align:center"><strong>${drDtAlert.routeID}<c:choose><c:when test="${drDtAlert.routeType eq 'LIGHT RAIL' or drDtAlert.routeType eq 'COMMUTER RAIL'}">-line</c:when></c:choose></strong></td>
		        <td>
		        <table width="100%" border="0" cellpadding="0" cellspacing="2" class="alertDetails_NestedTable">
		          <tr>
		          	<td style="font-size:14px">
		          	<!-- For Service Changes (type is 7), don't display type 'Service Changes' and same with Other (type is 8) but do display type for others. -->
		          	${drDtAlert.strAlertCatDetail}
		          	</td>
		          	<td width="29%" style="text-align:right;font-size:10px">
		          	  <c:choose>
		              	<c:when test="${not empty drDtAlert.updatedDate}">
		              	<strong>Updated: <fmt:formatDate value="${drDtAlert.updatedDate}" pattern="MM/dd/yyyy" />&nbsp;${drDtAlert.updatedTime}</strong>
		              	</c:when>
		              	<c:otherwise>&nbsp;</c:otherwise>
		              </c:choose>
		          	</td>
		          </tr>
		          <tr>
		            <td colspan="2"><strong>Effective Dates:
		              ${drDtAlert.startDate} 
		              <c:choose>
			              <c:when test="${drDtAlert.startTimeType eq 2}">
			              TBD
			              </c:when>
			              <c:when test="${drDtAlert.startTimeType eq 3 and not empty drDtAlert.startTime}">
			              &nbsp;${drDtAlert.startTime}
			              </c:when>
		              </c:choose>
		              <c:choose>
		                <c:when test="${not empty drDtAlert.endDate}">
			              <c:choose>
			              	<c:when test="${drDtAlert.endTimeType ne 1 or drDtAlert.startDate ne drDtAlert.endDate}">
			              	-
			              	</c:when>
			              </c:choose>
			              <c:choose>
			              	<c:when test="${drDtAlert.startDate ne drDtAlert.endDate}">
			              	${drDtAlert.endDate} 
			              	</c:when>
			              </c:choose>
			              <c:choose>
			              	<c:when test="${drDtAlert.endTimeType eq 2}">
			              	TBD
			              	</c:when>
			              	<c:when test="${drDtAlert.endTimeType eq 3 and not empty drDtAlert.endTime}">
			              	&nbsp;${drDtAlert.endTime}
			              	</c:when>
			              </c:choose>
		                </c:when>
		                <c:otherwise>
		              	  - Permanent
		                </c:otherwise>
		              </c:choose>
		              </strong><br />
		              <!-- display alert details -->
		              <c:choose>
		              	<c:when test="${not empty drDtAlert.alertEventInfo}">
		              	${drDtAlert.alertEventInfo}<c:choose><c:when test="${not empty drDtAlert.alertEventInfoRemaining}">${drDtAlert.alertEventInfoRemaining}</c:when></c:choose>
		              	</c:when>
		              </c:choose>
		              <!-- display route direction and details -->
		              <table width="100%" border="0" cellpadding="0" cellspacing="2" class="directionDetails_NestedTable">
	                    <tr>
	                      <td width="3%">&nbsp;</td>
	                      <td>
	                      <c:choose>
			              	<c:when test="${drDtAlert.alertCatID eq 7}">
			              	  <c:forEach var="ServChg_rtLnDir" items="${drDtAlert.directionDTOs}" begin="0" end="0">
			              	  	<c:choose><c:when test="${drDtAlert.routeType eq 'LIGHT RAIL' or drDtAlert.routeType eq 'COMMUTER RAIL'}">Line</c:when><c:otherwise>Route</c:otherwise></c:choose> ${drDtAlert.routeID} details: ${ServChg_rtLnDir.directionDetail}
			              	  </c:forEach>
			              	</c:when>
			              	<c:otherwise>
				              <c:forEach var="rtLnDir" items="${drDtAlert.directionDTOs}" varStatus="status">
				              	${rtLnDir.directionName}: ${rtLnDir.directionDetail}
			              	  	<c:if test="${not status.last}"><br></c:if>
				              </c:forEach>
			              	</c:otherwise>
			              </c:choose>
			              </td>
	                    </tr>
	                  </table>
	                  Operator info:
	                  <c:choose>
		              	<c:when test="${not empty drDtAlert.alertEventOpInfo}">
		              	${drDtAlert.alertEventOpInfo}<c:choose><c:when test="${not empty drDtAlert.alertEventOpInfoRemaining}">${drDtAlert.alertEventOpInfoRemaining}</c:when></c:choose>
		              	</c:when>
		              	<c:otherwise>N/A</c:otherwise>
		              </c:choose>
	                  <br />
	                  <!-- display Other routes affected -->
	                  Other routes affected: 
		              	<c:if test="${fn:length(drDtAlert.otherRouteLineAffDTOs) ge 0}">
			              <c:forEach var="otherRtLnAff" items="${drDtAlert.otherRouteLineAffDTOs}" varStatus="status">
			              	${otherRtLnAff.otherRouteLineAff}<c:if test="${not status.last}">, </c:if>
			              </c:forEach>
		              	</c:if>
		              	<c:if test="${fn:length(drDtAlert.otherRouteLineAffDTOs) eq 0}">None</c:if>
		              </td>
		            </tr>
		        </table>
		        </td>
	      	  </tr>
	      	  <!-- end when alert type is 1 which is Detour/Rider Alert -->
	      	</c:when>

	      	<c:otherwise>
	      	  <!-- when alert type is 2 which is Driver Alert -->
	      	  <tr style="vertical-align:top">
		        <td style="text-align:center"><strong>${drDtAlert.routeID}<c:choose><c:when test="${drDtAlert.routeType eq 'LIGHT RAIL' or drDtAlert.routeType eq 'COMMUTER RAIL'}">-line</c:when></c:choose></strong></td>
		        <td>
		        <table width="100%" border="0" cellpadding="0" cellspacing="2" class="alertDetails_NestedTable">
		          <tr>
		            <td><strong>Effective Dates:
		              ${drDtAlert.startDate} 
		              <c:choose>
			              <c:when test="${drDtAlert.startTimeType eq 2}">
			              TBD
			              </c:when>
			              <c:when test="${drDtAlert.startTimeType eq 3 and not empty drDtAlert.startTime}">
			              &nbsp;${drDtAlert.startTime}
			              </c:when>
		              </c:choose>
		              <c:choose>
		                <c:when test="${not empty drDtAlert.endDate}">
			              <c:choose>
			              	<c:when test="${drDtAlert.endTimeType ne 1 or drDtAlert.startDate ne drDtAlert.endDate}">
			              	-
			              	</c:when>
			              </c:choose>
			              <c:choose>
			              	<c:when test="${drDtAlert.startDate ne drDtAlert.endDate}">
			              	${drDtAlert.endDate} 
			              	</c:when>
			              </c:choose>
			              <c:choose>
			              	<c:when test="${drDtAlert.endTimeType eq 2}">
			              	TBD
			              	</c:when>
			              	<c:when test="${drDtAlert.endTimeType eq 3 and not empty drDtAlert.endTime}">
			              	&nbsp;${drDtAlert.endTime}
			              	</c:when>
			              </c:choose>
		                </c:when>
		                <c:otherwise>
		              	  - Permanent
		                </c:otherwise>
		              </c:choose>
		              </strong></td>
		            <td width="29%" style="text-align:right;font-size:10px">
					  <c:choose>
		              	<c:when test="${not empty drDtAlert.updatedDate}">
		              	<strong>Updated: <fmt:formatDate value="${drDtAlert.updatedDate}" pattern="MM/dd/yyyy" />&nbsp;${drDtAlert.updatedTime}</strong>
		              	</c:when>
		              	<c:otherwise>&nbsp;</c:otherwise>
		              </c:choose>
					</td>
		            </tr>
		          <tr>
		            <td colspan="2">
		              <!-- display alert details -->
		              <c:choose>
		              	<c:when test="${not empty drDtAlert.alertEventInfo}">
		              	${drDtAlert.alertEventInfo}<c:choose><c:when test="${not empty drDtAlert.alertEventInfoRemaining}">${drDtAlert.alertEventInfoRemaining}</c:when></c:choose>
		              	</c:when>
		              </c:choose>
		              <!-- display route direction and details -->
		              <table width="100%" border="0" cellpadding="0" cellspacing="2" class="directionDetails_NestedTable">
	                    <tr>
	                      <td width="3%">&nbsp;</td>
	                      <td>
	                      <c:forEach var="rtLnDir" items="${drDtAlert.directionDTOs}" varStatus="status">
			              	${rtLnDir.directionName}: ${rtLnDir.directionDetail}
		              	  	<c:if test="${not status.last}"><br></c:if>
			              </c:forEach>
			              </td>
	                    </tr>
	                  </table>
	                  <!-- display Other routes affected -->
	                  Other routes affected: 
	                  	<c:if test="${fn:length(drDtAlert.otherRouteLineAffDTOs) ge 0}">
			              <c:forEach var="otherRtLnAff" items="${drDtAlert.otherRouteLineAffDTOs}" varStatus="status">
			              	${otherRtLnAff.otherRouteLineAff}<c:if test="${not status.last}">, </c:if>
			              </c:forEach>
		              	</c:if>
		              	<c:if test="${fn:length(drDtAlert.otherRouteLineAffDTOs) eq 0}">None</c:if>
		            </td>
		          </tr>
		        </table>
		        </td>
	      	  </tr>
	      	  <!-- end when alert type is 2 which is Driver Alert -->
	      	</c:otherwise>
	      </c:choose>
	      </c:forEach>
	      </c:if>
	      <!-- end Detour, Rider and Driver Alerts, display route details -->

	    </table>
	    </TD>
	  </TR>
	</TABLE>
	<!--- end Driver Alert --->    
</td>
</tr>
</table>
</div>
</div>