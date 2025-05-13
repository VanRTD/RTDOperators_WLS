<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pdfUrl" value="/operator/secure/fetchDocument.do?docName=/HRForms/" />

<div id="mainContent">
<div align="left">
<table width="950px" border="0" align="left" cellpadding="0" cellspacing="0" class="bodyTable4" id="wrapperTable">
  
  <tr>
    <td>
    <table width="625px" border="0" cellpadding="0" cellspacing="0" id="contentTable">
      <tr>
      
      <!--CONTENT TD BEGINS HERE -->
        <td valign="top" class="bodyBlue">
          <!--THIS IS THE HEADLINE GRAPHIC. ANY HEADLINE USED WITHIN THIS TEMPLATE SHOULD ALWAYS BE ASSIGNED THE 'headlineGraphic2' CLASS-->
          <img src="../images/HL_HRForms.gif" alt="Train Cards" class="headlineGraphic2" /><br /><br />
          <!-- TEXT AND OTHER CONTENT GOES BELOW. LEFT PADDING AMOUNT AND BACKGROUND IMAGE FOR THIS TABLE ARE SET IN THE TABLE TAG CLASS (bodyTable3) -->
          <ul>
            <li><a href="${pdfUrl}24_Hr_Flex_Claim_Flex_Form.pdf" target="_blank" class="landingPageLink">24 Hr Flex Claim Flex Form</a></li>
            <li><a href="${pdfUrl}Hartford-Beneficiary_Change_Form.pdf" target="_blank" class="landingPageLink">Hartford-Beneficiary Designation/ Name &amp; Address Change Form</a></li>
            <li><a href="${pdfUrl}Hartford-Contribution_Change_Form.pdf" target="_blank" class="landingPageLink">Hartford-Contribution Change Form</a></li>
            <li><a href="${pdfUrl}Hartford-Plan_Enrollment_RTD_2009.pdf" target="_blank" class="landingPageLink">Hartford-Plan Enrollment Form</a></li>
            <li><a href="${pdfUrl}Valic-Contribution_Change_Form.pdf" target="_blank" class="landingPageLink">Valic-Contribution Change Form</a></li>
            <li><a href="${pdfUrl}Supplemental_Sick_Form_Union.pdf" target="_blank" class="landingPageLink">Union Supplemental Sick Form</a></li>
          </ul></td>
         <!-- END CONTENT TD -->
         </tr>
    </table></td>
  </tr>
</table>
</div>
</div>
