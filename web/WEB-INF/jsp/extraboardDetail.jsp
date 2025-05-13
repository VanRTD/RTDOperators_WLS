<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="mainContent">
<br />
<table border="0" cellpadding="0" cellspacing="0" align="center" width="95%" id="contentTable">
  <tr>
    <td style="text-align:left;" class="bodyBlue">
    	<img src="../images/HL_Extraboard.gif"
			title="Extraboard" 
            class="headlineGraphic2"><br /><br />
        <p style="text-align:center"><strong>7th day work assignments are not appearing on the Extraboard. Please check with your Division Supervisor.</strong></p></td>
  </tr>
  <tr>
    <td style="background:#9ab3d4; text-align:left;" class="bodyBlue">&nbsp;<strong>Assignment Information</strong></td>
  </tr>
  <tr>
    <td><table width="100%" border="1" cellpadding="5" cellspacing="0">
      <tr class="bodyBlueBold">
        <td width="11%">Box<br />Number</td>
        <td width="11%">Run<br />Number</td>
        <td width="11%">Route</td>
        <td width="11%">Block</td>
        <td width="11%">Signup<br />Time</td>
        <td width="11%">Pullout<br />Time</td>
        <td width="11%">First<br />Route</td>
        <td width="11%">Last<br />Route</td>
        <td width="12%">Relief<br />Location</td>
      </tr>
      <c:forEach var="detail" items="${blocks}" varStatus="groupBlockInfo">
	      <tr style="text-align:center" class="bodyBlueNoWidth">
	        <td>${detail.boxNbr}</td>
	        <td>${detail.runNumber}</td>
	        <td>${detail.routeAbbr}</td>
	        <td>${detail.blockNumber}</td>
	        <td>${detail.signupTime}&nbsp;</td>
	        <td>${detail.pulloutTime}</td>
	        <td>${detail.firstRoute}</td>
            <td>${detail.lastRoute}</td>
            <td>${detail.reliefLocation}&nbsp;</td>
	      </tr>
      </c:forEach>
    </table></td>
  </tr>
  <tr>
    <td class="bodyBlueNoWidth"><p><strong>HOLD DOWNS NOT DISPLAYED IF OPERATOR HAS BEEN ASSIGNED A TRIPPER.<br />PLEASE REPORT FOR YOUR HOLD DOWN ASSIGNMENT.</strong></p></td>
  </tr>
</table>
</div>