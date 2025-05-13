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
          <h1>Pull-outs/Pull-ins for Reliefs</h1>  
          <!-- TEXT AND OTHER CONTENT GOES BELOW. LEFT PADDING AMOUNT AND BACKGROUND IMAGE FOR THIS TABLE ARE SET IN THE TABLE TAG CLASS (bodyTable3) -->
        </td>
    </tr>
	<tr>
        <td class="bodyBlue">
          <c:choose>
	      	<c:when test="${fn:length(busFiles) eq 0 and fn:length(railFiles) eq 0}">
	        	<p style="color:#F00"><strong>Currently, there are no files available.</strong></p>
          	</c:when>
	      	<c:otherwise>
		        <br><table width="100%" border="0" cellspacing="0" cellpadding="3" summary="Nested table">
		            <c:if test="${fn:length(busFiles) gt 0}">
		            <!-- Bus -->
		            <tr>
		              <td style="background:#9ab3d4"><strong>Bus</strong></td>
		            </tr>
		            <tr>
		              <td>
		                <ul>
				          <c:forEach var="bus" items="${busFiles}" varStatus="status">
					        <li><a href="/operator/secure/fetchDocument.do?docName=OperatorMiscFile/PullinsForReliefs/Bus/${bus.fileName}" 
					        class="landingPageLink">${bus.fileNameWithoutExtension}</a> (Date modified: ${bus.fileDateModified})</li>
				          </c:forEach>            
		                </ul><br />
		              </td>
		            </tr>
		            </c:if>
		            <c:if test="${fn:length(railFiles) gt 0}">
		            <!-- Rail -->
		            <tr>
		              <td style="background:#9ab3d4"><strong>Rail</strong></td>
		            </tr>
		            <tr>
		              <td>
		                <ul>
				          <c:forEach var="rail" items="${railFiles}" varStatus="status">
					        <li><a href="/operator/secure/fetchDocument.do?docName=OperatorMiscFile/PullinsForReliefs/Rail/${rail.fileName}" 
					        class="landingPageLink">${rail.fileNameWithoutExtension}</a> (Date modified: ${rail.fileDateModified})</li>
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