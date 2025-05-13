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
<table width="950px" border="0" align="left" 
  cellpadding="0" cellspacing="0" class="bodyTable4" id="wrapperTable">
  
  <tr>
    <td>
    <table width="700px" border="0" cellspacing="0">
	<tr>
        <!--CONTENT TD BEGINS HERE -->
        <td class="bodyBlue"><a name="top"></a>
        <!--THIS IS THE HEADLINE GRAPHIC. ANY HEADLINE USED WITHIN THIS TEMPLATE 
        SHOULD ALWAYS BE ASSIGNED THE 'headlineGraphic2' CLASS-->
		<img src="../images/HL_BusBulletins.gif"
			title="Bus Bulletins" 
            class="headlineGraphic2">   
        <!-- TEXT AND OTHER CONTENT GOES BELOW. LEFT PADDING AMOUNT AND BACKGROUND IMAGE 
        FOR THIS TABLE ARE SET IN THE TABLE TAG CLASS (bodyTable3) -->
        <p style="text-align:center;">| 
        <a href="/operator/secure/getTransportationBulletins.do?type=Bus" 
        class="landingPageLink">Bulletin Search</a> |
        <%if (("otherBulletin").equalsIgnoreCase(request.getParameter("sortBy"))) {%>
        	<a href="/operator/secure/getTransportationBulletins.do?type=BUS&sortBy=byDate" class="landingPageLink">View Bus Bulletins By Date</a>
        <%} else if (("byDate").equalsIgnoreCase(request.getParameter("sortBy"))) {%>
        	<a href="/operator/secure/getTransportationBulletins.do?type=BUS&sortBy=otherBulletin" class="landingPageLink">View All Other Bus Bulletins</a>
        <%} %> |</p>
        </td>
      </tr>
	<tr>
	  <td class="bodyBlue">
      <table width="100%" align="center" border="0" cellpadding="0" 
          cellspacing="0" summary="Nested table">
	    <!-- If param byDate exists, display bulletins for this year & last year -->
	    <%if (("byDate").equalsIgnoreCase(request.getParameter("sortBy"))) {%>
	    <tr>
	      <td bgcolor="#CCCCCC">
          <table width="100%" align="center" border="0" 
              cellpadding="3" cellspacing="1" summary="Nested table">        
	        <tr style="background:#9ab3d4; text-align:center">
	          <td colspan="5"><strong>Bus Bulletins By Date: <A href="#${thisYear}">${thisYear}</A> | <A href="#${lastYear}">${lastYear}</A></strong></td>
	          </tr>
	        <!-- Begin This Year Bulletins -->
	        <tr style="background:#D6E7F7;">
	          <td colspan="5"><a name="${thisYear}"></a>
              <strong>${thisYear}</strong></td>
	          </tr>
            <tr style="text-align: center; background: #F0F0F0;">
              <td width="12%"><strong>DATE</strong></td>
              <td width="12%"><strong>NUMBER</strong></td>
              <td width="18%"><strong>TO</strong></td>
              <td><strong>SUBJECT</strong></td>
              <td width="14%"><strong>DOCUMENT</strong></td>
	          </tr>

	        <c:choose>
				<c:when test="${fn:length(thisYearbulletinsList) == 0}">
					<tr style="background:#FFFFFF;text-align:center;color:#ff0000">
	          			<td colspan="5"><strong>Currently there are no Bulletins.</strong></td>
	          		</tr>
				</c:when>
				<c:otherwise>						
					<c:forEach var="thisYear" items="${thisYearbulletinsList}">
					<tr style="background:#FFFFFF;">
	          			<td style="text-align: center">
              			<fmt:formatDate value="${thisYear.bulletinDate}" pattern="MM/dd/yyyy" /></td>
              			<td>${thisYear.bulletinNumber}</td>
              			<td>${thisYear.bulletinFor}</td>
              			<td>${thisYear.subject}</td>
              			<td><a href="/operator/secure/fetchDocument.do?docName=Transportation_Bulletins/BUS/${thisYear.bulletinFilename}" class="bodyBlueLink">
              			${thisYear.bulletinFilename}</a></td>
	        		</tr>
	        		</c:forEach>
				</c:otherwise>
			</c:choose>
           <!--- End This Year Bulletins --->
           
           <!--- Begin Last Year Bulletins --->
           <tr style="background:#D6E7F7;">
	          <td colspan="5"><a name="${lastYear}"></a>
              <strong>${lastYear}</strong></td>
	          </tr>
            <tr style="text-align: center; background: #F0F0F0;">
              <td width="12%"><strong>DATE</strong></td>
              <td width="12%"><strong>NUMBER</strong></td>
              <td width="18%"><strong>TO</strong></td>
              <td><strong>SUBJECT</strong></td>
              <td width="14%"><strong>DOCUMENT</strong></td>
	          </tr>

	        <c:choose>
				<c:when test="${fn:length(lastYearbulletinsList) == 0}">
					<tr style="background:#FFFFFF;text-align:center;color:#ff0000">
	          			<td colspan="5"><strong>Currently there are no Bulletins.</strong></td>
	          		</tr>
				</c:when>
				<c:otherwise>						
					<c:forEach var="lastYear" items="${lastYearbulletinsList}">
					<tr style="background:#FFFFFF;">
	          			<td style="text-align: center">
              			<fmt:formatDate value="${lastYear.bulletinDate}" pattern="MM/dd/yyyy" /></td>
              			<td>${lastYear.bulletinNumber}</td>
              			<td>${lastYear.bulletinFor}</td>
              			<td>${lastYear.subject}</td>
              			<td><a href="/operator/secure/fetchDocument.do?docName=Transportation_Bulletins/BUS/${lastYear.bulletinFilename}" class="bodyBlueLink">
              			${lastYear.bulletinFilename}</a></td>
	        		</tr>
	        		</c:forEach>
				</c:otherwise>
			</c:choose>
			<!-- End Last Year Bulletins -->
	        </table></td>
	      </tr>
	      <!-- If param otherBulletin exists, display all other bulletins that are not last year nor this year -->
	      <%} else if (("otherBulletin").equalsIgnoreCase(request.getParameter("sortBy"))) {%>
	      <tr>
		      <td bgcolor="#CCCCCC">
	          <table width="100%" align="center" border="0" 
	              cellpadding="3" cellspacing="1" summary="Nested table">        
		        <tr style="background:#9ab3d4; text-align:center">
		          <td colspan="5"><strong>All Other Bus Bulletins
		          <c:if test="${fn:length(otherBulletinsList) gt 0}">
					:
					<c:set var="yyLink" value="" />
					<c:forEach var="otherBulletinsQ" items="${otherBulletinsList}" varStatus="status">
						<c:if test="${yyLink ne otherBulletinsQ.bulletinTRYear}">
						<c:set var="yyLink" value="${otherBulletinsQ.bulletinTRYear}" />
						<A href="#${yyLink}">20${yyLink}</A><c:if test="${not status.last}"> | </c:if>
						</c:if>
					</c:forEach>
		          </c:if>
		          </strong></td>
		          </tr>
		        <!-- Begin All Other Bulletins -->
		        <c:choose>
					<c:when test="${fn:length(otherBulletinsList) == 0}">
						<tr style="background:#FFFFFF;text-align:center;color:#ff0000">
		          			<td colspan="5"><strong>Currently there are no Bulletins.</strong></td>
		          		</tr>
					</c:when>
					<c:otherwise>						
						<c:set var="yy" value="" />
						<c:forEach var="otherBulletins" items="${otherBulletinsList}">
						<c:if test="${yy ne otherBulletins.bulletinTRYear}">
						<c:set var="yy" value="${otherBulletins.bulletinTRYear}" />
						<c:set var="yyAnchor" value="${yy}" />

						<tr style="background:#D6E7F7;">
				          <td colspan="5"><a name="${yyAnchor}"></a>
			              <strong>20${yy}</strong></td>
				          </tr>
						<tr style="text-align: center; background: #F0F0F0;">
			              <td width="12%"><strong>DATE</strong></td>
			              <td width="12%"><strong>NUMBER</strong></td>
			              <td width="18%"><strong>TO</strong></td>
			              <td><strong>SUBJECT</strong></td>
			              <td width="14%"><strong>DOCUMENT</strong></td>
						</tr>
						</c:if>
						<tr style="background:#FFFFFF;">
			              <td style="text-align: center">
			              <fmt:formatDate value="${otherBulletins.bulletinDate}" pattern="MM/dd/yyyy" /></td>
			              <td>${otherBulletins.bulletinNumber}</td>
			              <td>${otherBulletins.bulletinFor}</td>
			              <td>${otherBulletins.subject}</td>
			              <td><a href="/operator/secure/fetchDocument.do?docName=Transportation_Bulletins/BUS/${otherBulletins.bulletinFilename}" class="bodyBlueLink">${otherBulletins.bulletinFilename}</a></td>
		        		</tr>
		        		</c:forEach>
					</c:otherwise>
				</c:choose>
				<!-- End All Other Bulletins -->
	        </table></td>
	      </tr>
	      <%} %>
	      <!-- End validate if param byDate or otherBulletin exists -->
	    </table>
        
        <div style="text-align: center"><br>
        <font size="3"><strong><a href="#top">Top</a></strong></font></div>
        </td>
	  </tr>
    </table>
</td>
</tr>
</table>
</div>
</div>