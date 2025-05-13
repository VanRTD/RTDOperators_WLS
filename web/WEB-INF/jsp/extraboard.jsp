<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div id="mainContent">
<br />
	<%-- get the table down off of the very top just a skoche --%>
<table border="0" cellpadding="0" cellspacing="0" align="center" width="95%" id="contentTable">
  <tr>
    <td style="text-align:left" class="bodyBlue">
    	<img src="../images/HL_Extraboard.gif"
			title="Extraboard" 
            class="headlineGraphic2"><br /><br />
        <p style="text-align:center"><strong>7th day work assignments are not appearing on the Extraboard. Please check with your Division Supervisor.</strong></p></td>
  </tr>
  <tr>
    <td>
	<table width="100%" align="center" border="1" cellspacing="0" cellpadding="5">
		<%-- column labels --%>
		<c:choose>
			<c:when test="${!empty ebList}">
				<tr style="text-align:center" class="bodyBlueBold">
					<td>Division</td>
					<td>Board</td>
					<td>Valid<br>For</td>
					<td>Employee<br>ID</td>
					<td>Employee<br>Name</td>
					<td>Assignment</td>
					<td>Run 1</td>
					<td>Run 2</td>
					<td>Run 3</td>
					<td>Run 4</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr>
					<td align="center" class="bodyBlueHeadline">You currently have no extraboard assignments.</td>
				</tr>
			</c:otherwise>
		</c:choose>
		
		<%-- draw the row with the extraboard data , consider using <c:url> with params here--%>
		<c:choose>
			<c:when test="${!empty ebList}">
				<%-- set initial value for tmpEmp to blank --%>
				<c:set var="tmpEmp" value="" />
				<%-- set initial row color for today's assignment as blue --%>
				<c:set var="theRowColor" value="bodyBlueNoWidth" />
				
				<c:forEach var="eb" items="${ebList}" varStatus="group">
					<%-- check if extraboard is listed for the same employee which is displayed on the second row as tomorrow's assignment. --%>
					<c:choose>
						<c:when test="${!empty tmpEmp && tmpEmp eq eb.empId}">
							<%-- If it's true, set row color for tomorrow's assignment as orange/red. --%>
							<c:set var="theRowColor" value="bodyRedNoWidth" />
						</c:when>
						<c:otherwise>
							<%-- If it's NOT true, set row color for tomorrow's assignment as blue. --%>
							<c:set var="theRowColor" value="bodyBlueNoWidth" />
						</c:otherwise>
					</c:choose>
					<tr style="text-align:center;font-weight:bold;" class="${theRowColor}">
						<td>${eb.division}</td>
						<td>${eb.shift}</td>
						<td><fmt:formatDate value="${eb.vdDate}" pattern="MM/dd/yy" /></td>
						<td>${eb.empId}</td>
						<td>${eb.empName}</td>
						<td>${eb.assignment}&nbsp;</td>
						<td>
							<c:choose>
								<c:when test="${eb.run1Id == null}">
									&nbsp;
								</c:when>
								<c:otherwise>
									<a href="/operator/secure/extraboardDetail.do?run=${eb.run1Id }&piece=${eb.run1Pieces }&validDate=${eb.validDate }" class="bodyBlueLink">
										 ${eb.run1Pieces}-${eb.run1Id}
									</a>
								</c:otherwise>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${eb.run2Id == null}">
									&nbsp;
								</c:when>
								<c:otherwise>
									<a href="/operator/secure/extraboardDetail.do?run=${eb.run2Id }&piece=${eb.run2Pieces }&validDate=${eb.validDate }" class="bodyBlueLink">
										${eb.run2Pieces}-${eb.run2Id}
									</a>
								</c:otherwise>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${eb.run3Id == null}">
									&nbsp;
								</c:when>
								<c:otherwise>
									<a href="/operator/secure/extraboardDetail.do?run=${eb.run3Id }&piece=${eb.run3Pieces }&validDate=${eb.validDate }" class="bodyBlueLink">
										${eb.run3Pieces}-${eb.run3Id}
									</a>
								</c:otherwise>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${eb.run4Id == null}">
									&nbsp;
								</c:when>
								<c:otherwise>
									<a href="/operator/secure/extraboardDetail.do?run=${eb.run4Id }&piece=${eb.run4Pieces }&validDate=${eb.validDate }" class="bodyBlueLink">
										${eb.run4Pieces}-${eb.run4Id}
									</a>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<%-- set tmpEmp as the empId of current index --%>
					<c:set var="tmpEmp" value="${eb.empId}" />
				</c:forEach>
			</c:when>
		</c:choose>
	</table></td>
  </tr>
</table>
</div>