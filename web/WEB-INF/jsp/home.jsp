<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ page
	import="org.springframework.security.ui.webapp.AuthenticationProcessingFilter"%>
<%@ page
	import="org.springframework.security.ui.AbstractProcessingFilter"%>
<%@ page import="org.springframework.security.AuthenticationException"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div align="left">
	<table width="950px" align="left" border="0" cellpadding="0"
		cellspacing="0" class="bodyTable2" id="wrapperTable">
		<tr style="vertical-align: top">
			<td>
				<table width="625px" border="0">
					<tr>
						<td colspan="2" valign="top" class="bodyBlue">
						<!-- Post maintenance alerts/messages here
						<div style="color:#FF0000"><br />
						<h4>Due to a System Maintenance Outage this evening (8:00pm through 12:00am December 4, 2023) the OPERATOR INFORMATION PAGE & EXTRABOARD link will NOT be functional. Information displayed when accessing the link will NOT BE UP TO DATE.</br><br>
						PLEASE CHECK WITH YOUR DIVISION SUPERVISOR IN REGARD TO POTENTIAL UPCOMING ASSIGNMENTS FOR THIS EVENING (December 4, 2023).
						We apologize for the inconvenience this might cause. This outage will allow updates to take place for continued compliance with security requirements, as well as make the Oracle system current on the latest application and hardware updates.</h4>       
						</div> -->
                        
						<img src="../images/HL_WelcomeOperator.gif" alt="Welcome Operators"
							width="300" height="26" class="headlineGraphic1" />
							<p>
								The Operator Information Page is meant to be your communication
								source to internal and external on-goings within RTD. The links provided should help answer many general questions, as
								well as allow you to access needed day to day information. 
								For questions and or comments, please feel free to
								contact Nataly Handlos at <a
									href="mailto:nataly.handlos@rtd-denver.com">nataly.handlos@rtd-denver.com</a>.<br />
							</p>

							<p>Thank you.</p></td>
					</tr>

					<!-- Post banner/events within this td here
					<tr style="text-align: center;vertical-align: top">
						<td rowspan="2" valign="top">
						&nbsp; 
						<a href="https://thehub.rtd-denver.com/sites/Communications/Mktg/SE/Pages/Home.aspx"><img src="../images/homeAd_OGAGLogo.jpg" alt="RTD Operation Give-A-Gift" border="0" class="headlineGraphic1" style="margin-left:15px;" /></a>
                        
                        
                        <td align="center" valign="top">
                            <p>
                                <a href="https://thehub.rtd-denver.com/sites/Communications/Mktg/SE/Pages/Operation-Give-a-Gift.aspx">
                                <img src="../images/homeAd_OGAGLogo.jpg" 
                                  alt="RTD Operation Give-A-Gift" class="headlineGraphic1" /></a> 
				                <br> <strong>Click for Details</strong>
                            </p>
                            <br />
						</td>

						<td colspan="3">&nbsp;</td>
					</tr> -->
					
					<tr style="vertical-align: top">
					  <td><img src="../images/mainHome.jpg" alt="bus, light rail image" class="headlineGraphic1" /></td>
					  <td style="text-align: center"><a href="mailto:employeefeedback@rtd-denver.com"><img src="../images/homeAd_InfoGateway.gif" alt="Information Gateway" class="headlineGraphic1" /></a></td>
				  </tr>
					<tr style="vertical-align: top">
					  <td><a href="https://rtddenver.sharepoint.com/sites/thehub/SitePages/Dialogue-with-Debra.aspx" target="_blank"><img src="../images/homeAd_AllHandsMeeting.gif" alt="All-Hands Meeting" class="headlineGraphic1" /></a></td>
					  <td style="text-align: center"><a href="https://flic.kr/s/aHsmNBuhve" target="_blank"><img src="../images/homeAd_OperCommendation.jpg" alt="Operator Commendations" class="headlineGraphic1" /></a></td>
					</tr>
					<tr style="vertical-align:top;">
					  <td><br><p><a href="http://www.rtd-denver.com/mobileticket.shtml" class="landingPageLink">Mobile Ticketing Information</a></p></td>
					  <td style="text-align: center"><a href="https://lf-appops-p01.rtd-denver.com/Forms/SMS2"> <img src="../images/safetyIcon.png" alt="safety image" class="headlineGraphic1" /></a><br><strong>Report Safety Issues Here</strong></td>
				  </tr>
				</table>
			</td>
			<td>
				<div id="menu">
					<jsp:include page="/WEB-INF/decorators/menu.jsp" />
				</div>
			</td>
		</tr>
	</table>
</div>