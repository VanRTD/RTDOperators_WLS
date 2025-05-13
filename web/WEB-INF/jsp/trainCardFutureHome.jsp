<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="docUrl" value="/operator/secure/fetchDocument.do?docName=/TrainCard/May25/" />
<c:set var="runRevUrl" value="/operator/secure/fetchDocument.do?docName=/RunboardRev/Future/"/>

<div id="mainContent">
<div align="left">
<table width="950px" border="0" cellpadding="0" cellspacing="0" class="bodyTable4" id="wrapperTable">
  
  <tr>
    <td>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" id="contentTable">
      <tr>
      
      <!--CONTENT TD BEGINS HERE -->
        <td valign="top" class="bodyBlue"><a name="top"></a>
          <!--THIS IS THE HEADLINE GRAPHIC. ANY HEADLINE USED WITHIN THIS TEMPLATE SHOULD ALWAYS BE ASSIGNED THE 'headlineGraphic2' CLASS-->
          <h1>Traincards</h1>
          <!-- TEXT AND OTHER CONTENT GOES BELOW. LEFT PADDING AMOUNT AND BACKGROUND IMAGE FOR THIS TABLE ARE SET IN THE TABLE TAG CLASS (bodyTable3) -->
          <p><a href="/operator/secure/fetchPageController.do?landingPage=trainCardHome" class="landingPageLink">Click here to see traincards effective on January 19, 2025.</a></p>
          <!-- Begin runboard -->
          <table width="100%" border="0" cellspacing="0" cellpadding="3" summary="Nested table">
            <tr>
              <td style="background:#D6E7F7;font-size:14px"><a name="Jan20"></a><strong>Effective as of <span style="color:#F00">May 25, 2025</span></strong></td>
            </tr>
			<!-- Revised Traincards link goes here
			<tr>
              <td style="background:#D6E7F7;text-align:center"><a href="/operator/secure/fetchPageController.do?landingPage=trainCardRevisionsFutureHome" class="landingPageLink"><span style="font-size:14px;">Click here to see revised traincards</span></a></td>
            </tr> -->
            <tr>
              <td style="background:#9ab3d4"><strong>Traincards</strong></td>
            </tr>
            <tr>
              <td><ul>
                <li><strong>Boulder - </strong> 
                  <a href="${docUrl}May25 RC Section 2.1 Div04 Boulder Traincards Excluding FF.pdf" class="landingPageLink">Weekday, Saturday, and Sunday</a> |
                  <a href="${docUrl}May25 RC Section 2.1 Div02 Boulder Tripper Traincards Excluding FF.pdf" class="landingPageLink">Tripper</a>
                  <br />
                  <br />
                </li>
                <li><strong>East Metro - </strong> 
                  <a href="${docUrl}May25 RC Section 3.1A Div06 East Metro Weekday Traincards.pdf" class="landingPageLink">Weekday</a> |
                  <a href="${docUrl}May25 RC Section 3.1B Div06 East Metro Saturday Traincards.pdf" class="landingPageLink">Saturday</a> |
		  		  <a href="${docUrl}May25 RC Section 3.1C Div06 East Metro Sunday Traincards.pdf" class="landingPageLink">Sunday</a> |
                  <a href="${docUrl}May25 RC Section 3.1 Div02 East Metro Tripper Traincards.pdf" class="landingPageLink">Tripper</a>
                  <br/>
                  <br />
                </li>
                <li><strong>Platte - </strong> 
                  <a href="${docUrl}May25 RC Section 1.1A Div02 Platte Weekday Traincards Excluding FF FMR and Mall.pdf" class="landingPageLink">Weekday</a> |
                  <a href="${docUrl}May25 RC Section 1.1B Div02 Platte Saturday Traincards Excluding FF FMR and Mall.pdf" class="landingPageLink">Saturday</a> |
		  		  <a href="${docUrl}May25 RC Section 1.1C Div02 Platte Sunday Traincards Excluding FF FMR and Mall.pdf" class="landingPageLink">Sunday</a> |
                  <a href="${docUrl}May25 RC Section 1.1 Div02 Platte Tripper Traincards Excluding FF.pdf" class="landingPageLink">Tripper</a>
                  <br />
                  <br />
                </li>
                <li><strong>Light Rail - </strong> 
                  <a href="${docUrl}May25 RC Section 5.1 - Div01 Elati MT Traincards.pdf" class="landingPageLink">Monday-Thursday</a> |
				  <a href="${docUrl}May25 RC Section 5.2 - Div01 Elati FR Traincards.pdf" class="landingPageLink">Friday</a> |
				  <a href="${docUrl}May25 RC Section 5.3 - Div01 Elati SA Traincards.pdf" class="landingPageLink">Saturday</a> |
				  <a href="${docUrl}May25 RC Section 5.4 - Div01 Elati SU Traincards.pdf" class="landingPageLink">Sunday</a>
                  <br />
                  <br />
                </li>
                <li><strong>Mall - </strong> 
                  <a href="${docUrl}May25 RC Section 1.2 Div02 Platte MALL Traincards.pdf" class="landingPageLink">Weekday, Saturday, and Sunday</a> |
				  <strong>Mall Relief Traincards - </strong><a href="${docUrl}May25 RC Section 1.3 Div02 Platte MALL Relief Traincards.pdf" class="landingPageLink">Weekday, Saturday, and Sunday</a>
                  <br />
                  <br />
                </li>
				<li><strong>FMR - </strong>
                  <a href="${docUrl}May25 RC Section 1.1 Div02 Platte FMR Traincards.pdf" class="landingPageLink">Weekday</a>
                  <br />
                  <br />
                </li>
                <li><strong>Flatiron Flyer</strong>
                  <ul>
                    <li><strong>Boulder - </strong> 
                      <a href="${docUrl}May25 RC Section 2.2 Div04 Boulder FF Traincards.pdf" class="landingPageLink">Weekday, Saturday, and Sunday</a>  |
                      <a href="${docUrl}May25 RC Section 2.2 Div02 Boulder FF Tripper Traincards.pdf" class="landingPageLink">Tripper</a>
                      <br />
                      <br />
                    </li>
                    <li><strong>Platte - </strong> 
                      <a href="${docUrl}May25 RC Section 1.4 Div02 Platte FF Traincards.pdf" class="landingPageLink">Weekday, Saturday</a> |
					  <a href="${docUrl}May25 RC Section 1.2 Div02 Platte FF Tripper Traincards.pdf" class="landingPageLink">Tripper</a>
                      <br />
                      <br />
                    </li>
                  </ul>
                </li>
				<li><strong>RTD Commuter Rail - </strong> 
                  <a href="${docUrl}May25 RC Section 5.1 - Div09 CRT MT Traincards.pdf" class="landingPageLink">Monday-Thursday</a> |
				  <a href="${docUrl}May25 RC Section 5.2 - Div09 CRT FR Traincards.pdf" class="landingPageLink">Friday</a> |
				  <a href="${docUrl}May25 RC Section 5.3 - Div09 CRT SA Traincards.pdf" class="landingPageLink">Saturday</a> |
				  <a href="${docUrl}May25 RC Section 5.4 - Div09 CRT SU Traincards.pdf" class="landingPageLink">Sunday</a>
                  <br />
                  <br />
                </li>
              </ul></td>
            </tr>
            <!-- Traincards goes here -->
            <!-- contractor traincard goes here -->
            <!-- VT: This message below is for future runboard to be previewed by the public when contractor traincards are not available yet. After the files become available, comment out this message
            <tr>
              <td style="background:#9ab3d4"><strong>Contractor Traincards</strong></td>
            </tr>
            <tr>
              <td><strong>'Traincards for ALL Private Contractors' will be available soon. To receive any of this data prior to this date, please contact your Division Supervisor.
Thank you.</strong></td>
            </tr> -->
            <tr>
              <td style="background:#9ab3d4"><strong>Contractor Traincards</strong></td>
            </tr>
            <tr>
              <td><ul>
				<li><strong>Commerce City -</strong> 
                  <a href="${docUrl}May25 Div13 Commerce City Traincards (Block Sort).pdf" class="landingPageLink">Block Sort</a>
                  <br /><br />
                </li>
                <li><strong>Denver -</strong> 
                  <a href="${docUrl}May25 Div17 Denver Traincards (Block Sort).pdf" class="landingPageLink">Block Sort</a>
                 <br /><br />
                </li>
                <li><strong>Longmont -</strong> 
                  <a href="${docUrl}May25 Div18 Longmont Traincards (Block Sort).pdf" class="landingPageLink">Block Sort</a>
                  <br /><br />
                </li>
                <li><strong>Englewood -</strong> 
                  <a href="${docUrl}May25 Div15 Englewood Traincards (Block Sort).pdf" class="landingPageLink">Block Sort</a>
                  <br /><br />
                </li>
              </ul></td>

            </tr>
            
            <!-- School Trippers goes here -->
            <!--
             <tr>
              <td style="background:#9ab3d4"><strong>School Trippers</strong></td>
            </tr>
            <tr>
              <td>
                <ul>
                  <li><strong>BVSD - </strong><a href="${docUrl}Jan20 BVSD Traincards.pdf" class="landingPageLink">Traincards</a><br /><br /></li>
                  <li><strong>DPS - </strong><a href="${docUrl}Jan20 DPS Traincards.pdf" class="landingPageLink">Traincards</a></li>
                  </ul>
              </td>
            </tr>
            -->
            
          </table>
          <!-- End runboard -->
                  </td>
                </tr>
              </table></td>
            </tr>
            </table>
          </td>
         <!-- END CONTENT TD -->
         </tr>
    </table></td>
  </tr>
</table>
</div>
</div>
