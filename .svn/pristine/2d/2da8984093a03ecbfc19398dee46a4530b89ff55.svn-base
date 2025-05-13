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
          <h1>Bus/Rail Operations related Projects</h1> 
          <!-- TEXT AND OTHER CONTENT GOES BELOW. LEFT PADDING AMOUNT AND BACKGROUND IMAGE FOR THIS TABLE ARE SET IN THE TABLE TAG CLASS (bodyTable3) -->
        </td>
        </tr>
	<tr>
        <td class="bodyBlue">
	        <table width="100%" align="center" border="0" cellpadding="3" cellspacing="1" summary="Nested table">
	          <tr>
	          	<td>
		          	<ul>
			          <c:choose>
					      <c:when test="${fn:length(busRailOpProjFiles) eq 0}">
					      	<li>Currently, there are no files available.</li>
					      </c:when>
					      <c:otherwise>
				          <c:forEach var="doc" items="${busRailOpProjFiles}" >
					          <li><a href="/operator/secure/fetchDocument.do?docName=OperatorMiscFile/RTDRelatedInfo/Bus_and_Rail_Operations_related_Projects/${doc.fileName}" 
					          class="landingPageLink">${doc.fileNameWithoutExtension}</a> (Date modified: ${doc.fileDateModified})<br /><br /></li>
				          </c:forEach>            
				          </c:otherwise>
			          </c:choose>
		          	</ul>
	          	</td>
	          </tr>
	        </table>
		</td>
	</tr>
    </table></td>
  </tr>
</table>
</div>
</div>