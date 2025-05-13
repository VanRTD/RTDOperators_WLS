<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="docUrl" value="/operator/secure/fetchDocument.do?docName=/TrainCard/Jan25/" />
<c:set var="runRevUrl" value="/operator/secure/fetchDocument.do?docName=/RunboardRev/Current/"/>

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
          <h1>Revised Traincards</h1>
          <!-- TEXT AND OTHER CONTENT GOES BELOW. LEFT PADDING AMOUNT AND BACKGROUND IMAGE FOR THIS TABLE ARE SET IN THE TABLE TAG CLASS (bodyTable3)
          <p><a href="/operator/secure/fetchPageController.do?landingPage=trainCardFutureHome" class="landingPageLink">Click here to see traincards effective on January 19, 2025.</a></p> -->
          <!-- Begin runboard -->
          <table width="100%" border="0" cellspacing="0" cellpadding="3" summary="Nested table">
            <tr>
              <td style="background:#D6E7F7;font-size:14px"><a name="Jan20"></a><strong>Effective as of <span style="color:#F00">January 19, 2025</span></strong></td>
            </tr>
			<tr>
              <td colspan="2" style="background:#D6E7F7;text-align:center"><a href="/operator/secure/fetchPageController.do?landingPage=trainCardHome" class="landingPageLink"><span style="font-size:14px;">Click here to see traincards</span></a></td>
            </tr>
            <tr>
              <td style="background:#9ab3d4"><strong>Traincards</strong></td>
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
                    <td style="text-align:center">24</td>
                    <td><a href="${docUrl}Jan25 Rev24 WK FFLX Traincard Block 88 - BD.pdf" class="landingPageLink">FFLX</a></td>
                  </tr>
				  <tr>
                    <td style="text-align:center">19</td>
                    <td><a href="${docUrl}Jan25 Rev19 WK 225 Traincard Block 12 - TL.pdf" class="landingPageLink">225</a></td>
                  </tr>
				  <tr>
				    <td style="text-align:center">17</td>
				    <td>
					  <strong>JUMP - </strong><a href="${docUrl}Jan25 Rev17 All JUMP Traincards - BD.pdf" class="landingPageLink">Boulder</a>, <a href="${docUrl}Jan25 Rev17 All JUMP Traincards - TL.pdf" class="landingPageLink">TransDev Longmont</a>
					</td>
				    </tr>
				  <tr>
				    <td style="text-align:center">16</td>
				    <td>
                      <a href="${docUrl}Jan25 Rev16 All 1 Traincards - PL.pdf" class="landingPageLink">1</a>, 
					  <a href="${docUrl}Jan25 Rev16 All 44 Traincards - PL.pdf" class="landingPageLink">44</a>
					</td>
				    </tr>
				  <tr>
				    <td style="text-align:center">13</td>
				    <td>
                      <a href="${docUrl}Jan25 Rev13 WK 206 Traincard Block 1 - BD.pdf" class="landingPageLink">206</a>, 
					  <a href="${docUrl}Jan25 Rev13 WK FF Traincard Block 12 - BD.pdf" class="landingPageLink">FF</a>
					</td>
				    </tr>
				  <tr>
				    <td style="text-align:center">12</td>
				    <td>
					  <a href="${docUrl}Jan25 Rev12 All 35 Traincards - TD.pdf" class="landingPageLink">35</a>, 
					  <a href="${docUrl}Jan25 Rev12 WK FF Traincard Block 5 - BD.pdf" class="landingPageLink">FF</a>
					  </td>
				    </tr>
				  <tr>
				    <td style="text-align:center">11</td>
				    <td>
					  <a href="${docUrl}Jan25 Rev11 WK 120 Traincard Block 7 - TM.pdf" class="landingPageLink">120</a>, 
					  <a href="${docUrl}Jan25 Rev11 WK LD Traincards Blocks 61-63 73-76 - BD.pdf" class="landingPageLink">LD</a>
					</td>
				    </tr>
				  <tr>
				    <td style="text-align:center">10</td>
				    <td>
					  <a href="${docUrl}Jan25 Rev10 All AB Traincards - BD.pdf" class="landingPageLink">AB</a>, 
					  <a href="${docUrl}Jan25 Rev10 WK FF Traincards.pdf" class="landingPageLink">FF</a>
					  </td>
				    </tr>
				  <tr>
				    <td style="text-align:center">8</td>
				    <td><a href="${docUrl}Jan25 Rev08 WK FF Traincards Blocks 57-58 - BD.pdf" class="landingPageLink">FF</a></td>
				    </tr>
				  <tr>
				    <td style="text-align:center">7</td>
				    <td><a href="${docUrl}Jan25 Rev07 WK 59 Traincards - TD.pdf" class="landingPageLink">59</a></td>
				    </tr>
				  <tr>
				    <td style="text-align:center">6</td>
				    <td>
					  <a href="${docUrl}Jan25 Rev06 SU 73 Traincards Blocks 2 and 4 - TD.pdf" class="landingPageLink">73</a>,
                      <a href="${docUrl}Jan25 Rev06 All 88 Traincards - CC.pdf" class="landingPageLink">88</a>
					</td>
				    </tr>
				  <tr>
				    <td style="text-align:center">5</td>
				    <td>
					  <strong>104L -</strong>
                      <a href="${docUrl}Jan25 Rev05 WK 104L Traincard Blocks 61-63 - PL.pdf" class="landingPageLink">Weekday</a>,
                      <a href="${docUrl}Jan25 Rev05 SA 104L Traincard Blocks 61-63 - PL.pdf" class="landingPageLink">Saturday</a>,
					  <a href="${docUrl}Jan25 Rev05 SU 104L Traincard Block 63 - PL.pdf" class="landingPageLink">Sunday</a> |
					  <strong>LD -</strong>
					  <a href="${docUrl}Jan25 Rev05 WK LD Traincards Blocks 75-76 - BD.pdf" class="landingPageLink">Weekday</a>
					</td>
				    </tr>
				  <tr>
				    <td style="text-align:center">1</td>
				    <td>
					  <strong>Boulder Traincards: </strong>
                      <a href="${docUrl}Jan25 Rev1 RC Section 2.1 Div04 Boulder Traincards_LD.pdf" class="landingPageLink">LD</a><br>
					  <strong>Elati Traincards: </strong>
                      <a href="${docUrl}Jan25 Rev1 RC Section 5.1 - Div01 Elati Traincards_all_days.pdf" class="landingPageLink">Monday-Thursday, Friday, Saturday, and Sunday</a>
                    </td>
				    </tr>
				</table><br>
			  </td>
            </tr>
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
