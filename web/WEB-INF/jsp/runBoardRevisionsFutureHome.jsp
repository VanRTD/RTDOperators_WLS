<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="docUrl" value="/operator/secure/fetchDocument.do?docName=/RunBoard/May25/"/>
<c:set var="runRevUrl" value="/operator/secure/fetchDocument.do?docName=/RunboardRev/Future/"/>

<div id="mainContent">
<div align="left">
<table width="950px" border="0" align="left" cellpadding="0" cellspacing="0" class="bodyTable4" id="wrapperTable">
  
  <tr>
    <td>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" id="contentTable">
      <tr>
      
      <!--CONTENT TD BEGINS HERE -->
        <td valign="top" class="bodyBlue">
          <!--THIS IS THE HEADLINE GRAPHIC. ANY HEADLINE USED WITHIN THIS TEMPLATE SHOULD ALWAYS BE ASSIGNED THE 'headlineGraphic2' CLASS-->
          <h1>Revised Timecards, Runsheets & Runboard</h1>
          <!-- TEXT AND OTHER CONTENT GOES BELOW. LEFT PADDING AMOUNT AND BACKGROUND IMAGE FOR THIS TABLE ARE SET IN THE TABLE TAG CLASS (bodyTable3)
          <p><a href="/operator/secure/fetchPageController.do?landingPage=runBoardFutureHome" class="landingPageLink">Click here to see timecards, runsheets and runboard effective on January 19, 2025.</a></p> -->
          <!-- Begin runboard -->
          <table width="100%" border="0" cellspacing="0" cellpadding="3" summary="Nested table">
            <tr>
              <td style="background:#D6E7F7;font-size:14px"><a name="Jan20"></a><strong>Effective as of <span style="color:#F00">May 25, 2025</span></strong></td>
            </tr>
            <!-- Revised Timecards goes here -->
			<tr>
              <td colspan="2" style="background:#D6E7F7;text-align:center"><a href="/operator/secure/fetchPageController.do?landingPage=runBoardFutureHome" class="landingPageLink"><span style="font-size:14px;">Click here to see timecards, runsheets and runboard</span></a></td>
            </tr>
            <tr>
              <td style="background:#9ab3d4"><strong>Timecards</strong></td>
            </tr>
            <tr>
              <td>
				<p><a href="${runRevUrl}Runboard Revisions List.pdf" class="landingPageLink">Revision Summary</a></p>
				<table width="70%" border="1" cellspacing="0" cellpadding="5">
                  <tr class="bodyBlueBold">
                    <td style="text-align:center" width="30%"><strong>Revision</strong></td>
                    <td><strong>What changed...</strong></td>
                  </tr>
				  <tr>
				    <td style="text-align:center">1</td>
				    <td>
				      <a href="${docUrl}" class="landingPageLink">File goes here</a>
				      </td>
				    </tr>
				</table><br>
              </td>
            </tr>
            <!-- Revised Runboard with Names goes here
            <tr>
              <td style="background:#9ab3d4"><strong>Runboard with Names</strong></td>
            </tr>
            <tr>
              <td>
				<p><a href="${runRevUrl}Runboard Revisions List.pdf" class="landingPageLink">Revision Summary</a></p>
				<table width="70%" border="1" cellspacing="0" cellpadding="5">
                  <tr class="bodyBlueBold">
                    <td style="text-align:center" width="30%"><strong>Revision</strong></td>
                    <td><strong>What changed...</strong></td>
                  </tr>
				  <tr>
                    <td style="text-align:center">1</td>
                    <td>
					  <strong>Boulder - </strong><a href="${docUrl}Jan25 Rev08 Div04 Boulder WK Runboard with Names.pdf" class="landingPageLink">Weekday</a> |
                      </strong><a href="${docUrl}Jan25 Rev08 Div04 Boulder HL Runboard with Names.pdf" class="landingPageLink">Holiday</a>
					</td>
                  </tr>
				</table><br>
              </td>
            </tr> -->
            
            <!-- Sign-Up Sheets goes here
            <tr>
              <td style="background:#9ab3d4"><strong>Sign-Up Sheets</strong></td>
            </tr>
            <tr>
              <td>&nbsp;
              </td>
            </tr> -->
            
            <!-- Revised Runsheets goes here
            <tr>
              <td style="background:#9ab3d4"><strong>Runsheets</strong></td>
            </tr>
            <tr>
              <td>
				<p><a href="${runRevUrl}Runboard Revisions List.pdf" class="landingPageLink">Revision Summary</a></p>
				<table width="70%" border="1" cellspacing="0" cellpadding="5">
                  <tr class="bodyBlueBold">
                    <td style="text-align:center" width="30%"><strong>Revision</strong></td>
                    <td><strong>What changed...</strong></td>
                  </tr>
				  <tr>
                    <td style="text-align:center">1</td>
                    <td>
					  <strong>Boulder -</strong> <a href="${docUrl}Jan25 Rev08 Div04 Boulder WK Runsheets for FT Operators.pdf" class="landingPageLink">Weekday</a>
					</td>
                  </tr>
				</table><br>
                </td>
            </tr> -->
          </table>      <!-- End runboard -->
          <br />
            <br />
          <p><span style="text-align:center">
          <img src="../images/mainHome.jpg" alt="bus, light rail image" hspace="15" align="left" />
          *** 1. (To search for a run number click Edit/Find or<br />
			hold down the CTL Key and press the letter F)<br />
		<br />
			2. (When printing runsheets you can choose a 
                print range area<br /> in the Print dialogue box to get just the page you want)</span></p></td>
         <!-- END CONTENT TD -->
        </tr>
    </table></td>
  </tr>
</table>
</div>
</div>
