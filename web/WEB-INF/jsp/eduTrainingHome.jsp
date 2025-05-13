<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div id="mainContent">

<div align="left">
<table width="950px" border="0" align="left" cellpadding="0" cellspacing="0" class="bodyTable4" id="wrapperTable">
  
  <tr>
    <td>
    <table width="625px" border="0" cellspacing="0">
	<tr>
		<!--CONTENT TD BEGINS HERE -->
        <td class="bodyBlue">
          <!--THIS IS THE HEADLINE GRAPHIC. ANY HEADLINE USED WITHIN THIS TEMPLATE SHOULD ALWAYS BE ASSIGNED THE 'headlineGraphic2' CLASS-->
          <h1>Education, Training & Development</h1><br>
          <!-- TEXT AND OTHER CONTENT GOES BELOW. LEFT PADDING AMOUNT AND BACKGROUND IMAGE FOR THIS TABLE ARE SET IN THE TABLE TAG CLASS (bodyTable3) -->
          <ul>
          	<li><a href="/operator/secure/fetchDocument.do?docName=OperatorMiscFile/RTDRelatedInfo/ETD/Education_Training_Catalog.pdf" class="landingPageLink">Education Training and Development Catalog</li>
          </ul>
        </td>
    </tr>
	<tr>
        <td class="bodyBlue">
          <c:choose>
	      	<c:when test="${fn:length(classInfoFiles) eq 0 and fn:length(registrationInfoFiles) eq 0}">
	        	<p style="color:#F00"><strong>Currently, there are no files available.</strong></p>
          	</c:when>
	      	<c:otherwise>
		        <br><table width="100%" border="0" cellspacing="0" cellpadding="3" summary="Nested table">
		            <c:if test="${fn:length(classInfoFiles) gt 0}">
		            <!-- Class Info -->
		            <tr>
		              <td style="background:#9ab3d4"><strong>Class Info</strong></td>
		            </tr>
		            <tr>
		              <td>
		                <ul>
				          <c:forEach var="classInfo" items="${classInfoFiles}" varStatus="status">
					        <li><a href="/operator/secure/fetchDocument.do?docName=OperatorMiscFile/RTDRelatedInfo/ETD/Class_Info/${classInfo.fileName}" 
					        class="landingPageLink">${classInfo.fileNameWithoutExtension}</a> (Date uploaded: ${classInfo.fileDateModified})</li>
				          </c:forEach>            
		                </ul><br />
		              </td>
		            </tr>
		            </c:if>
		            <c:if test="${fn:length(registrationInfoFiles) gt 0}">
		            <!-- Registration Info -->
		            <tr>
		              <td style="background:#9ab3d4"><strong>Registration Info</strong></td>
		            </tr>
		            <tr>
		              <td>
		                <ul>
				          <c:forEach var="registrationInfo" items="${registrationInfoFiles}" varStatus="status">
					        <li><a href="/operator/secure/fetchDocument.do?docName=OperatorMiscFile/RTDRelatedInfo/ETD/Registration_Info/${registrationInfo.fileName}" 
					        class="landingPageLink">${registrationInfo.fileNameWithoutExtension}</a> (Date uploaded: ${registrationInfo.fileDateModified})</li>
				          </c:forEach>            
		                </ul><br />
		              </td>
		            </tr>
		            </c:if> 
		        </table>
	      	</c:otherwise>
          </c:choose>
		</td>
	</tr>
    </table></td>
  </tr>
</table>
</div>
</div>