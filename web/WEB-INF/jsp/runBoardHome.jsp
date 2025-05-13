<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="docUrl" value="/operator/secure/fetchDocument.do?docName=/RunBoard/Jan25/"/>
<c:set var="runRevUrl" value="/operator/secure/fetchDocument.do?docName=/RunboardRev/Current/"/>

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
          <h1>Timecards, Runsheets & Runboard</h1>
          <!-- TEXT AND OTHER CONTENT GOES BELOW. LEFT PADDING AMOUNT AND BACKGROUND IMAGE FOR THIS TABLE ARE SET IN THE TABLE TAG CLASS (bodyTable3) -->
          <p><a href="/operator/secure/fetchPageController.do?landingPage=runBoardFutureHome" class="landingPageLink">Click here to see timecards, runsheets and runboard effective on May 25, 2025.</a></p>
          <!-- Begin runboard -->
          <table width="100%" border="0" cellspacing="0" cellpadding="3" summary="Nested table">
            <tr>
              <td style="background:#D6E7F7;font-size:14px"><a name="Jan20"></a><strong>Effective as of <span style="color:#F00">January 19, 2025</span></strong></td>
            </tr>
            <!-- Timecards goes here -->
            <tr>
              <td style="background:#D6E7F7;text-align:center"><a href="/operator/secure/fetchPageController.do?landingPage=runBoardRevisionsHome" class="landingPageLink"><span style="font-size:14px;">Click here to see revised timecards, runsheets and runboard</span></a></td>
            </tr>
            <tr>
              <td style="background:#9ab3d4"><strong>Timecards</strong></td>
            </tr>
            <tr>
              <td>
                <ul>
                  <li><strong>Bus - </strong>
                  <a href="${docUrl}Jan25 RC Section 1.1 Weekday Bus Timetables.pdf" class="landingPageLink">Weekday</a> |
                  <a href="${docUrl}Jan25 RC Section 1.2 Saturday Bus Timetables.pdf" class="landingPageLink">Saturday</a> |
                  <a href="${docUrl}Jan25 RC Section 1.3 Sunday Bus Timetables.pdf" class="landingPageLink">Sunday</a>
                  <br /><br /></li>
                  
                  <li><strong>Light Rail - </strong>
		  		  <a href="${docUrl}Jan25 RC Section 1.1 - Div01 Elati MT Timetable.pdf" class="landingPageLink">Monday-Thursday</a> |
		  		  <a href="${docUrl}Jan25 RC Section 1.2 - Div01 Elati FR Timetable.pdf" class="landingPageLink">Friday</a> |
		  		  <a href="${docUrl}Jan25 RC Section 1.3 - Div01 Elati SA Timetable.pdf" class="landingPageLink">Saturday</a> |
		  		  <a href="${docUrl}Jan25 RC Section 1.4 - Div01 Elati SU Timetable.pdf" class="landingPageLink">Sunday</a>
                  <br><br></li>
                  
                  <li><strong>Mall - </strong>
                  <a href="${docUrl}Jan25 RC Section 3 MALL Timetables.pdf" class="landingPageLink">Weekday, Saturday, and Sunday</a><br /><br /></li>
                  
                  <li><strong>Flatiron Flyer - </strong>
                  <a href="${docUrl}Jan25 RC Section 4 Flatiron Flyer Timetables.pdf" class="landingPageLink">Weekday, Saturday, and Sunday</a><br /><br /></li>
                  
                  <!-- <li><strong>Free MetroRide - </strong>
                  <a href="${docUrl}Jan25 RC - Section 3 Free Metro Ride Timetables.pdf" class="landingPageLink">Weekday</a><br /><br /></li> -->				
                  <li><strong>Commuter Rail - </strong>
                  <a href="${docUrl}Jan25 RC Section 1 - CRMF Timetables.pdf" class="landingPageLink">Monday-Thursday, Friday, Saturday, and Sunday</a>
				  <br /><br /></li>				
                  <li><strong>RTD Commuter Rail - </strong>
                  <a href="${docUrl}Jan25 RC Section 1.1 - Div09 CRT MT Timetables.pdf" class="landingPageLink">Monday-Thursday</a> |
		  		  <a href="${docUrl}Jan25 RC Section 1.2 - Div09 CRT FR Timetables.pdf" class="landingPageLink">Friday</a> |
		  		  <a href="${docUrl}Jan25 RC Section 1.3 - Div09 CRT SA Timetables.pdf" class="landingPageLink">Saturday</a> |
		  		  <a href="${docUrl}Jan25 RC Section 1.4 - Div09 CRT SU Timetables.pdf" class="landingPageLink">Sunday</a>
				  <br><br /></li>
				  
			      <li><a href="${docUrl}Jan25 Div13 Commerce City Timetables.pdf" class="landingPageLink">Commerce City</a><br /><br /></li>
                  <li><a href="${docUrl}Jan25 Div17 Denver Timetables.pdf" class="landingPageLink">Denver</a><br /><br /></li>
                  <li><a href="${docUrl}Jan25 Div18 Longmont Timetables.pdf" class="landingPageLink">Longmont</a><br /><br /></li>
                  <li><a href="${docUrl}Jan25 Div15 Englewood Timetables.pdf" class="landingPageLink">Englewood</a><br /><br /></li>
                </ul>
              </td>
            </tr>
            <!-- Runboard goes here -->
            <tr>
              <td style="background:#9ab3d4"><strong>Runboard with Names</strong></td>
            </tr>
            <tr>
              <td>
                <ul>
                  <li><strong>Boulder - </strong>
                      <a href="${docUrl}Jan25 Div04 Boulder WK Runboard with Names.pdf" class="landingPageLink">Weekday</a>
					| <a href="${docUrl}Jan25 Div04 Boulder SA Runboard with Names.pdf" class="landingPageLink">Saturday</a>
					| <a href="${docUrl}Jan25 Div04 Boulder SU Runboard with Names.pdf" class="landingPageLink">Sunday</a>
                    | <a href="${docUrl}Jan25 Div04 Boulder HL Runboard with Names.pdf" class="landingPageLink">Holiday</a>
					| <a href="${docUrl}Jan25 Div04 Boulder Tripper Runboard with Names.pdf" class="landingPageLink">Tripper</a>
					| <a href="${docUrl}Jan25 Div04 Boulder AM Extra Board Runboard with Names.pdf" class="landingPageLink">AM Extra Board</a>
                    | <a href="${docUrl}Jan25 Div04 Boulder PM Extra Board Runboard with Names.pdf" class="landingPageLink">PM Extra Board</a>
					| <a href="${docUrl}Jan25 Div04 Boulder Relief Runs Runboard with Names.pdf" class="landingPageLink">Relief Runs</a>
                    <br /><br /></li>
                  <li><strong>East Metro - </strong>
                      <a href="${docUrl}Jan25 Div06 East Metro WK Runboard with Names.pdf" class="landingPageLink">Weekday</a>
					| <a href="${docUrl}Jan25 Div06 East Metro SA Runboard with Names.pdf" class="landingPageLink">Saturday</a>
					| <a href="${docUrl}Jan25 Div06 East Metro SU Runboard with Names.pdf" class="landingPageLink">Sunday</a>
                    | <a href="${docUrl}Jan25 Div06 East Metro HL Runboard with Names.pdf" class="landingPageLink">Holiday</a>
                    | <a href="${docUrl}Jan25 Div06 East Metro Tripper Runboard with Names.pdf" class="landingPageLink">Tripper</a>
					| <a href="${docUrl}Jan25 Div06 East Metro AM Extra Board Runboard with Names.pdf" class="landingPageLink">AM Extra Board</a>
                    | <a href="${docUrl}Jan25 Div06 East Metro PM Extra Board Runboard with Names.pdf" class="landingPageLink">PM Extra Board</a>
					| <a href="${docUrl}Jan25 Div06 East Metro Relief Runs Runboard with Names.pdf" class="landingPageLink">Relief Runs</a>
                    <br /><br /></li>
                  <li><strong>Elati - </strong>
                      <a href="${docUrl}Jan25 Div01 Elati MT Runboard with Names.pdf" class="landingPageLink">Monday-Thursday</a>
					| <a href="${docUrl}Jan25 Div01 Elati FR Runboard with Names.pdf" class="landingPageLink">Friday</a>
					| <a href="${docUrl}Jan25 Div01 Elati SA Runboard with Names.pdf" class="landingPageLink">Saturday</a>
					| <a href="${docUrl}Jan25 Div01 Elati SU Runboard with Names.pdf" class="landingPageLink">Sunday</a>
                    | <a href="${docUrl}Jan25 Div01 Elati HL Runboard with Names.pdf" class="landingPageLink">Holiday</a>
					| <a href="${docUrl}Jan25 Div01 Elati AM Extra Board Runboard with Names.pdf" class="landingPageLink">AM Extra Board</a>
                    | <a href="${docUrl}Jan25 Div01 Elati PM Extra Board Runboard with Names.pdf" class="landingPageLink">PM Extra Board</a>
					| <a href="${docUrl}Jan25 Div01 Elati Relief Runs Runboard with Names.pdf" class="landingPageLink">Relief Runs</a>
                    <br /><br /></li>
                  <li><strong>Platte - </strong>
                      <a href="${docUrl}Jan25 Div02 Platte WK Runboard with Names.pdf" class="landingPageLink">Weekday</a>
					| <a href="${docUrl}Jan25 Div02 Platte SA Runboard with Names.pdf" class="landingPageLink">Saturday</a>
					| <a href="${docUrl}Jan25 Div02 Platte SU Runboard with Names.pdf" class="landingPageLink">Sunday</a>
                    | <a href="${docUrl}Jan25 Div02 Platte HL Runboard with Names.pdf" class="landingPageLink">Holiday</a>
					| <a href="${docUrl}Jan25 Div02 Platte Tripper Runboard with Names.pdf" class="landingPageLink">Tripper</a>
					| <a href="${docUrl}Jan25 Div02 Platte AM Extra Board Runboard with Names.pdf" class="landingPageLink">AM Extra Board</a>
                    | <a href="${docUrl}Jan25 Div02 Platte PM Extra Board Runboard with Names.pdf" class="landingPageLink">PM Extra Board</a>
					| <a href="${docUrl}Jan25 Div02 Platte Relief Runs Runboard with Names.pdf" class="landingPageLink">Relief Runs</a>
                    <br /><br /></li>
				  <li><strong>RTD Commuter Rail Conductors - </strong>
                      <a href="${docUrl}Jan25 Div09 CRT MT Runboard with Names for Conductors.pdf" class="landingPageLink">Monday-Thursday</a>
					| <a href="${docUrl}Jan25 Div09 CRT FR Runboard with Names for Conductors.pdf" class="landingPageLink">Friday</a>
					| <a href="${docUrl}Jan25 Div09 CRT SA Runboard with Names for Conductors.pdf" class="landingPageLink">Saturday</a>
					| <a href="${docUrl}Jan25 Div09 CRT SU Runboard with Names for Conductors.pdf" class="landingPageLink">Sunday</a>
                    | <a href="${docUrl}Jan25 Div09 CRT HL Runboard with Names for Conductors.pdf" class="landingPageLink">Holiday</a>
					| <a href="${docUrl}Jan25 Div09 CRT Conductors AM Extra Board Runboard with Names.pdf" class="landingPageLink">AM Extra Board</a>
                    | <a href="${docUrl}Jan25 Div09 CRT Conductors PM Extra Board Runboard with Names.pdf" class="landingPageLink">PM Extra Board</a>
					| <a href="${docUrl}Jan25 Div09 CRT Relief Runs Runboard with Names for Conductors.pdf" class="landingPageLink">Relief Runs</a>
                    <br /><br /></li>
				  <li><strong>RTD Commuter Rail Engineers - </strong>
                      <a href="${docUrl}Jan25 Div09 CRT MT Runboard with Names for Engineers.pdf" class="landingPageLink">Monday-Thursday</a>
					| <a href="${docUrl}Jan25 Div09 CRT FR Runboard with Names for Engineers.pdf" class="landingPageLink">Friday</a>
					| <a href="${docUrl}Jan25 Div09 CRT SA Runboard with Names for Engineers.pdf" class="landingPageLink">Saturday</a>
					| <a href="${docUrl}Jan25 Div09 CRT SU Runboard with Names for Engineers.pdf" class="landingPageLink">Sunday</a>
                    | <a href="${docUrl}Jan25 Div09 CRT HL Runboard with Names for Engineers.pdf" class="landingPageLink">Holiday</a>
					| <a href="${docUrl}Jan25 Div09 CRT Engineers AM Extra Board Runboard with Names.pdf" class="landingPageLink">AM Extra Board</a>
                    | <a href="${docUrl}Jan25 Div09 CRT Engineers PM Extra Board Runboard with Names.pdf" class="landingPageLink">PM Extra Board</a>
					| <a href="${docUrl}Jan25 Div09 CRT Relief Runs Runboard with Names for Engineers.pdf" class="landingPageLink">Relief Runs</a>
                    <br /><br /></li>
                  <!-- Revised Runboard with Names goes here -->
				</ul>
              </td>
            </tr>
            
            <!-- Sign-Up Sheets goes here -->
            
            <tr>
              <td style="background:#9ab3d4"><strong>Sign-Up Sheets</strong></td>
            </tr>
            <tr>
              <td>
              <ul>
                <li><strong>All Bus Divisions Sign-Up Sheets -</strong>
				<a href="${docUrl}Jan25 RC Section 7 - All RTD Bus Division - Holiday Signup Sheets.pdf" class="landingPageLink">Holiday</a> |
				<a href="${docUrl}Jan25 RC Section 3 - All Divisions - Tripper Signup Sheets.pdf" class="landingPageLink">Tripper</a> |
                <a href="${docUrl}Jan25 RC Section 5 - All Divisions - Pre-Vote Relief Runs.pdf" class="landingPageLink">Pre-Vote Relief Runs</a>
                <br /><br /></li>
			  	<li><strong>Boulder - </strong>
				  <a href="${docUrl}Jan25 RC Section 6.4 - Div04 Boulder WK Signup Sheets.pdf" class="landingPageLink">Weekday</a> |
				  <a href="${docUrl}Jan25 RC Section 6.5 - Div04 Boulder SA Signup Sheets.pdf" class="landingPageLink">Saturday</a> |
				  <a href="${docUrl}Jan25 RC Section 6.6 - Div04 Boulder SU Signup Sheets.pdf" class="landingPageLink">Sunday</a> |
				  <strong>Pre-Vote Days Off - </strong>
				  <a href="${docUrl}Jan25 RC Section 4.2a - Div04 Boulder Pre-Vote Days Off - AM.pdf" class="landingPageLink">AM</a> |
				  <a href="${docUrl}Jan25 RC Section 4.2b - Div04 Boulder Pre-Vote Days Off - PM.pdf" class="landingPageLink">PM</a>
				<br /><br /></li>
			    <li><strong>East Metro - </strong>
				  <a href="${docUrl}Jan25 RC Section 6.7 - Div04 East Metro WK Signup Sheets.pdf" class="landingPageLink">Weekday</a> |
				  <a href="${docUrl}Jan25 RC Section 6.8 - Div04 East Metro SA Signup Sheets.pdf" class="landingPageLink">Saturday</a> |
				  <a href="${docUrl}Jan25 RC Section 6.9 - Div04 East Metro SU Signup Sheets.pdf" class="landingPageLink">Sunday</a> |
				  <strong>Pre-Vote Days Off - </strong>
				  <a href="${docUrl}Jan25 RC Section 4.3a - Div06 East Metro Pre-Vote Days Off - AM.pdf" class="landingPageLink">AM</a> |
				  <a href="${docUrl}Jan25 RC Section 4.3b - Div06 East Metro Pre-Vote Days Off - PM.pdf" class="landingPageLink">PM</a>
				<br /><br /></li>
			    <li><strong>Elati - </strong>
				  <a href="${docUrl}Jan25 RC Section 5.1 - Div01 Elati MT Signup Sheets.pdf" class="landingPageLink">Monday-Thursday</a>
                  | <a href="${docUrl}Jan25 RC Section 5.2 - Div01 Elati FR Signup Sheets.pdf" class="landingPageLink">Friday</a>
                  | <a href="${docUrl}Jan25 RC Section 5.3 - Div01 Elati SA Signup Sheets.pdf" class="landingPageLink">Saturday</a>
                  | <a href="${docUrl}Jan25 RC Section 5.4 - Div01 Elati SU Signup Sheets.pdf" class="landingPageLink">Sunday</a>
                  | <a href="${docUrl}Jan25 RC Section 6 - Div01 Elati Holiday Signup Sheets.pdf" class="landingPageLink">Holiday</a>
				  | <a href="${docUrl}Jan25 RC Section 4 - Div01 Elati Relief Runs.pdf" class="landingPageLink">Relief Runs</a>
				  | <strong>Pre-Vote Days Off - </strong>
				  <a href="${docUrl}Jan25 RC Section 3a - Div01 Elati Pre-Vote Days Off - AM.pdf" class="landingPageLink">AM</a> |
				  <a href="${docUrl}Jan25 RC Section 3a - Div01 Elati Pre-Vote Days Off - PM.pdf" class="landingPageLink">PM</a>
				<br><br></li>
			    <li><strong>Platte - </strong>
				  <a href="${docUrl}Jan25 RC Section 6.1 - Div02 Platte WK Signup Sheets.pdf" class="landingPageLink">Weekday</a> |
				  <a href="${docUrl}Jan25 RC Section 6.2 - Div02 Platte SA Signup Sheets.pdf" class="landingPageLink">Saturday</a> |
				  <a href="${docUrl}Jan25 RC Section 6.3 - Div02 Platte SU Signup Sheets.pdf" class="landingPageLink">Sunday</a> |
				  <strong>Pre-Vote Days Off - </strong>
				  <a href="${docUrl}Jan25 RC Section 4.1a - Div02 Platte Pre-Vote Days Off - AM.pdf" class="landingPageLink">AM</a> |
				  <a href="${docUrl}Jan25 RC Section 4.1b - Div02 Platte Pre-Vote Days Off - PM.pdf" class="landingPageLink">PM</a>
				<br /><br /></li>
			    <li><strong>RTD Commuter Rail - </strong>
				  <a href="${docUrl}Jan25 RC Section 5.1 - Div09 CRT Engineer MT Signup Sheets.pdf" class="landingPageLink">Monday-Thursday</a>
                  | <a href="${docUrl}Jan25 RC Section 5.2 - Div09 CRT Engineer FR Signup Sheets.pdf" class="landingPageLink">Friday</a>
                  | <a href="${docUrl}Jan25 RC Section 5.3 - Div09 CRT Engineer SA Signup Sheets.pdf" class="landingPageLink">Saturday</a>
                  | <a href="${docUrl}Jan25 RC Section 5.4 - Div09 CRT Engineer SU Signup Sheets.pdf" class="landingPageLink">Sunday</a>
                  | <a href="${docUrl}Jan25 RC Section 6 - Div09 CRT Engineer Holiday Signup Sheets.pdf" class="landingPageLink">Holiday</a>
				  | <a href="${docUrl}Jan25 RC Section 4a - Div09 CRT Engineers Relief Runs.pdf" class="landingPageLink">Relief Runs</a>
				  | <strong>Pre-Vote Days Off - </strong>
				  <a href="${docUrl}Jan25 RC Section 3a - Div09 CRT Engineers Pre-Vote Days Off - AM.pdf" class="landingPageLink">AM</a> |
				  <a href="${docUrl}Jan25 RC Section 3b - Div09 CRT Engineers Pre-Vote Days Off - PM.pdf" class="landingPageLink">PM</a>
				<br /><br /></li>
			    <li><strong>RTD Commuter Rail Conductors - </strong>
				  <a href="${docUrl}Jan25 RC Section 7.1 - Div09 CRT Conductor MT Signup Sheets.pdf" class="landingPageLink">Monday-Thursday</a>
                  | <a href="${docUrl}Jan25 RC Section 7.2 - Div09 CRT Conductor FR Signup Sheets.pdf" class="landingPageLink">Friday</a>
                  | <a href="${docUrl}Jan25 RC Section 7.3 - Div09 CRT Conductor SA Signup Sheets.pdf" class="landingPageLink">Saturday</a>
                  | <a href="${docUrl}Jan25 RC Section 7.4 - Div09 CRT Conductor SU Signup Sheets.pdf" class="landingPageLink">Sunday</a>
                  | <a href="${docUrl}Jan25 RC Section 8 - Div09 CRT Conductor Holiday Signup Sheets.pdf" class="landingPageLink">Holiday</a>
				  | <a href="${docUrl}Jan25 RC Section 4b - Div09 CRT Conductor Relief Runs.pdf" class="landingPageLink">Relief Runs</a>
				  | <strong>Pre-Vote Days Off - </strong>
				  <a href="${docUrl}Jan25 RC Section 3c - Div09 CRT Conductors Pre-Vote Days Off - AM.pdf" class="landingPageLink">AM</a> |
				  <a href="${docUrl}Jan25 RC Section 3d - Div09 CRT Conductors Pre-Vote Days Off - PM.pdf" class="landingPageLink">PM</a>
				<br /><br /></li>
                  <!-- LRT Revote Revision goes here
                  <li><strong>LRT Revote Revision</strong>
                    <ul>
                      <li>
                      <strong>Elati Sign-up Sheets - </strong><a href="${docUrl}Jan25 Revote Section 5 - Div01 Elati All Signup Sheets.pdf" class="landingPageLink">Monday-Thursday, Friday, Saturday, Sunday</a> |
                      <a href="${docUrl}Jan25 Revote Section 6 - Div01 Elati HL Signup Sheets.pdf" class="landingPageLink">Holiday</a>
                      <br><br></li>
                      <li><a href="${docUrl}Jan25 Revote Section 4 - Div01 Elati Relief Runs.pdf" class="landingPageLink">Relief Runs</a>
                      <br><br></li>
                    </ul> 
                  </li> -->
				  <!-- Revised Signup Sheets goes here
                  <li><strong>Revised Signup Sheets</strong>
                    <ul>
                      <li>
                   	  <strong>
                      <a href="${runRevUrl}Runboard Revisions List.pdf" class="landingPageLink">Revision Summary</a>
                      </strong>
                      <br /><br /></li>
                      <li>Revision 3<br />
                      <strong>East Metro</strong> -
                      <a href="${docUrl}Aug22 Rev03 Div06 East Metro Thanksgiving plus 1 Holiday Signup Sheets.pdf" class="landingPageLink">Thanksgiving + 1 Holiday Tripper</a> |
                      <a href="${docUrl}Aug22 Rev03 Div06 East Metro Tripper Signup Sheets.pdf" class="landingPageLink">Tripper</a>
                      <br /><br /></li>
                      <li>Revision 2<br />
                      <strong>Platte</strong> -
                      <a href="${docUrl}Aug22 Rev02 Div02 Platte WK Signup Sheets.pdf" class="landingPageLink">Weekday</a> |
                      <a href="${docUrl}Aug22 Rev02 Div02 Platte HL Signup Sheets.pdf" class="landingPageLink">Holiday</a><br />
                      <strong>RTD Commuter Rail</strong> -
                      <a href="${docUrl}Aug22 Rev02 Div09 CRT MT Runsheets.pdf" class="landingPageLink">Monday-Thursday</a><br />
                      <strong>RTD Commuter Rail Conductors</strong> -
                      <a href="${docUrl}Aug22 Rev02 Div09 CRT Conductor MT Signup Sheets.pdf" class="landingPageLink">Monday-Thursday</a>
                      <br /><br />
                      </li>
                    </ul> 
                  </li> -->
              </ul>
              </td>
            </tr>
            
            <!-- Runsheets goes here -->
            <tr>
              <td style="background:#9ab3d4"><strong>Runsheets</strong></td>
            </tr>
            <tr>
              <td>
                <ul>
                  <li><strong>Runsheets Regular for All Divisions</strong><br />
                  <ul>
                    <li><strong>Boulder - </strong>
                    <a href="${docUrl}Jan25 RC Section 5.1 - Div04 Boulder WK Runsheets for FT Operators.pdf" class="landingPageLink">Weekday</a> |
					<a href="${docUrl}Jan25 RC Section 5.2 - Div04 Boulder SA Runsheets for FT Operators.pdf" class="landingPageLink">Saturday</a> |
				    <a href="${docUrl}Jan25 RC Section 5.3 - Div04 Boulder SU Runsheets for FT Operators.pdf" class="landingPageLink">Sunday</a>
                    <br /><br /></li>
                    <li><strong>East Metro - </strong>
                    <a href="${docUrl}Jan25 RC Section 6.1 - Div06 East Metro WK Runsheets for FT Operators.pdf" class="landingPageLink">Weekday</a> |
					<a href="${docUrl}Jan25 RC Section 6.2 - Div06 East Metro SA Runsheets for FT Operators.pdf" class="landingPageLink">Saturday</a> |
				    <a href="${docUrl}Jan25 RC Section 6.3 - Div06 East Metro SU Runsheets for FT Operators.pdf" class="landingPageLink">Sunday</a>
				    <br /><br /></li>
                    <li><strong>Elati - </strong>
                    <a href="${docUrl}Jan25 RC Section 4 - Div01 Elati Runsheets.pdf" class="landingPageLink">Monday-Thursday, Friday, Saturday, Sunday</a>
                    <br><br></li>
                    <li><strong>Platte - </strong>
                    <a href="${docUrl}Jan25 RC Section 4.1 - Div02 Platte WK Runsheets for FT Operators.pdf" class="landingPageLink">Weekday</a> |
					<a href="${docUrl}Jan25 RC Section 4.2 - Div02 Platte SA Runsheets for FT Operators.pdf" class="landingPageLink">Saturday</a> |
				    <a href="${docUrl}Jan25 RC Section 4.3 - Div02 Platte SU Runsheets for FT Operators.pdf" class="landingPageLink">Sunday</a>
					<br /><br /></li>
					<!-- <li><strong>RTD Commuter Rail - </strong>
					<a href="${docUrl}Jan25 RC Section 4.1 - Div09 CRT Runsheets.pdf" class="landingPageLink">Monday-Thursday, Friday, Saturday, Sunday</a>
					<br /><br /></li>  -->
					<li><strong>CRT Runsheets for Conductors - </strong>
					<a href="${docUrl}Jan25 RC Section 4.2 - Div09 CRT Runsheets for Conductors.pdf" class="landingPageLink">Monday-Thursday, Friday, Saturday, Sunday</a>
					<br /><br /></li>
					<li><strong>CRT Runsheets for Engineers - </strong>
					<a href="${docUrl}Jan25 RC Section 4.1 - Div09 CRT Runsheets for Engineers.pdf" class="landingPageLink">Monday-Thursday, Friday, Saturday, Sunday</a>
					<br /><br /></li>
                    </ul>
                  </li>
                  <!-- LRT Revote Revision goes here
                  <li><strong>LRT Revote Revision</strong>
                    <ul>
                      <li><a href="${docUrl}Jan25 Revote Section 4 - Div01 Elati Runsheets.pdf" class="landingPageLink">Runsheets</a> |
                      <a href="${docUrl}Jan25 Revote Section 3 - Div01 Elati Runsheet Summary.pdf" class="landingPageLink">Runsheet Summary</a>
                      <br><br></li>
                    </ul> 
                  </li> -->
                  
                  <li><strong>Runsheets Trippers</strong>				      
                    <ul>
                      <li><a href="${docUrl}Jan25 RC Section 3.2b - Div04 Boulder WK Tripper Runsheets.pdf" class="landingPageLink">Boulder - Weekday</a> |
                        <a href="${docUrl}Jan25 RC Section 3.2c - Div06 East Metro WK Tripper Runsheets.pdf" class="landingPageLink">East Metro - Weekday</a> |
                        <a href="${docUrl}Jan25 RC Section 3.2a - Div02 Platte WK Tripper Runsheets.pdf" class="landingPageLink">Platte - Weekday</a>
                        <br>
                        <br>
                      </li>
                    </ul>
                  </li>
				  <!--<li><strong>Revised Runsheets Trippers</strong><br />
                    <ul>             
                       <li><strong><a href="${runRevUrl}Runboard Revisions List.pdf" class="landingPageLink">Revision Summary</a></strong><br /><br /></li>
                       <li>Revision 1<br />
                       <strong>Elati  - </strong> 
                        <a href="${docUrl}Jan22 Rev01 Div01 Elati MT and FR Runsheets.pdf" class="landingPageLink">Monday-Thursday, Friday</a> |
					   <strong>East Metro  - </strong> 
                        <a href="${docUrl}Jan22 Rev05 East Metro Runsheets for Weekday Trippers for PT Operators.pdf" class="landingPageLink">Weekday Trippers for PT Operators</a>
						<br /><br /></li>
					  </ul>
                  </li>-->
				  <li><strong>Runsheet Summary</strong>
				    <ul>
				      <li><a href="${docUrl}Jan25 RC Section 1.2 - Div04 Boulder Runsheet Summary.pdf" class="landingPageLink">Boulder</a> |
				        <a href="${docUrl}Jan25 RC Section 1.3 - Div06 East Metro Runsheet Summary.pdf" class="landingPageLink">East Metro</a> |
				        <a href="${docUrl}Jan25 RC Section 1.1 - Div02 Platte Runsheet Summary.pdf" class="landingPageLink">Platte</a><br><br>
				        </li>
				      </ul>
				    </li>
                  <li><strong>Runsheets for Operators Voting Weekend Runs</strong>
                    <ul>
                      <li><a href="${docUrl}Jan25 RC Section 3.1b - Div04 Boulder Weekend Runsheets for PT Operators.pdf" class="landingPageLink">Boulder</a> |
                        <a href="${docUrl}Jan25 RC Section 3.1c - Div06 East Metro Weekend Runsheets for PT Operators.pdf" class="landingPageLink">East Metro</a> |
                        <a href="${docUrl}Jan25 RC Section 3.1a - Div02 Platte Weekend Runsheets for PT Operators.pdf" class="landingPageLink">Platte</a><br><br>
                      </li>
                    </ul>
                  </li>
				  <li><strong>Runsheet Summary for PT Operators</strong>
				    <ul>
				      <li><a href="${docUrl}Jan25 RC Section 2.2 - Div04 Boulder Runsheet Summary for PT Operators.pdf" class="landingPageLink">Boulder</a> |
				        <a href="${docUrl}Jan25 RC Section 2.3 - Div06 East Metro Runsheet Summary for PT Operators.pdf" class="landingPageLink">East Metro</a> |
				        <a href="${docUrl}Jan25 RC Section 2.1 - Div02 Platte Runsheet Summary for PT Operators.pdf" class="landingPageLink">Platte</a><br><br>
				        </li>
				      </ul>
				    </li>
                  <!--<li><strong>Run Assignments</strong>
					<ul>
					  <li><strong><a href="${runRevUrl}Runboard Revisions List.pdf" class="landingPageLink">Revision Summary</a></strong><br /><br /></li>
                      <li>Revision 12<br />
                      <a href="${docUrl}Jan22 Rev12 Div09 CRT Run Assignments.pdf" class="landingPageLink">RTD Commuter Rail</a><br><br></li>
                      </ul>
                  </li>-->
                </ul>
                </td>
            </tr>
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
