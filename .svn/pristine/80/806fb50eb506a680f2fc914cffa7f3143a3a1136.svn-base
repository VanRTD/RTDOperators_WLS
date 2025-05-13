// build the heiarchy
//initialize dynamic area of



		var aSubmenuData = [

					{
						id: "operatorInfo",
						itemdata: [
							{ text: "Bus/Bicycle Safety Video", url: "http://www.chicagobikes.org/video/?loadVideo=buses_and_bicycles", target: "_blank"},
							{ text: "Bus Bulletins", url: "/operator/secure/getTransportationBulletins.do?type=BUS&sortBy=byDate"},
							{ text: "Bus/ LRT Connections at LRT Stations", url: "/operator/secure/fetchDocument.do?docName=/OperatorMiscFile/OperatorInfo/Bus_LRT_Connections_at_LRT_Stations.pdf", target: "_blank"},
							{ text: "Daily Train Orders", url: "/operator/secure/fetchDocument.do?docName=/TrainOrders/Train_Orders.docx", onclick: { fn: DailyTrainOrder } },
							{ text: "Detour, Rider and Driver Alerts", url: "/operator/secure/getAlertDetours.do" },
							{ text: "Dispatch Monthly News", url: "/operator/secure/getTransportationBulletins.do?type=DMN&sortBy=byDate" },
							{ text: "Inside Connections", url: "/operator/secure/getMondayMorningQ.do" },
							{ text: "LRT Bulletins", url: "/operator/secure/getTransportationBulletins.do?type=LR&sortBy=byDate" },
							{ text: "LRT Training Videos", url: "/operator/secure/fetchPageController.do?landingPage=lrtTrainingHome" },
							{ text: "Major Transfer Locations - Pulse Times", url: "/operator/secure/fetchDocument.do?docName=/OperatorMiscFile/OperatorInfo/Major_Transfer_Locations_Pulse_Times.pdf", target: "_blank"},
							{ text: "Operator Training Videos", url: "/operator/secure/fetchPageController.do?landingPage=busOpsTrainingHome"},
							{ text: "Restroom Information", url: "/operator/secure/getOperatorRestroomInfo.do"},
							{ text: "Service Development News", url: "/operator/secure/getTransportationBulletins.do?type=DN&sortBy=byDate"},
							]
					},
					
					{
						id: "operatorBulletinInfo",
						itemdata: [
							{ text: "Operator Bulletin Board&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;", url: "/operator/secure/fetchPageController.do?landingPage=obbDisclaimer" },
							{ text: "Operator Bulletin Board Forum Contacts", url: "/operator/secure/fetchDocument.do?docName=/OperatorMiscFile/OperatorBulletinInfo/Operator_Bulletin_Board_Forum_Contacts.pdf", target: "_blank" },
							{ text: "Operator Bulletin Board Instructions", url: "/operator/secure/fetchDocument.do?docName=/OperatorMiscFile/OperatorBulletinInfo/Operator_Bulletin_Board_Instructions.pdf", target: "_blank" },
							]
					},

					{
						id: "runboardInfo",
						itemdata: [
						    { text: "District Shuttle Shelterboards", url: "/operator/secure/getDistrictShuttle.do",},
							//{ text: "Extraboard", url: "/operator/secure/extraboard.do", onclick: { fn: ExtraBoard } },
							{ text: "Extraboard", onclick: { fn: ExtraBoard } },
							{ text: "LRT Flagstop Info", url: "/operator/secure/getLRTFlagstopInfo.do",
							{ text: "Relief Code", url: "/operator/secure/fetchDocument.do?docName=/OperatorMiscFile/RunboardInfo/Relief_Codes.pdf", target: "_blank"},
							{ text: "Runboard Dates", url: "/operator/secure/fetchDocument.do?docName=/OperatorMiscFile/RunboardInfo/Runboard_Dates.pdf", target: "_blank"},
							{ text: "Runboard Production Schedule", url: "/operator/secure/fetchDocument.do?docName=/OperatorMiscFile/RunboardInfo/Runboard_Production_Schedule.pdf", target: "_blank"},
							/** Current and Future Runboard Menu 
							 * This block of code is for posting the future runboard to be previewed by the public. 
							 * After the future runboard becomes current runboard, comment out this Current and Future Runboard Menu part and make the below Current Runboard Menu part active. */
						    { 
								text: "Current Runboard &nbsp;&nbsp;&nbsp;&nbsp;", url: "#",
								submenu: {
									id: "currentRunboard",
									itemdata: [
									{ text: "Timecards, Runsheets & Runboard", url: "/operator/secure/fetchPageController.do?landingPage=runBoardHome"},
									{ text: "Trailblazer", url: "/operator/secure/fetchPageController.do?landingPage=trailblazerHome"},
									{ text: "Traincards", url: "/operator/secure/fetchPageController.do?landingPage=trainCardHome"},
									]	
								}
							},
							{ 
								text: "Future Runboard &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;", url: "#",
								submenu: {
									id: "futureRunboard",
									itemdata: [
									{ text: "Timecards, Runsheets & Runboard", url: "/operator/secure/fetchPageController.do?landingPage=runBoardFutureHome"},
									{ text: "Trailblazer", url: "/operator/secure/fetchPageController.do?landingPage=trailblazerFutureHome"},
									{ text: "Traincards", url: "/operator/secure/fetchPageController.do?landingPage=trainCardFutureHome"},									
									]	
								}
							},
							/** End Current and Future Runboard Menu */
							
							/** Current Runboard Menu
							 * This block of code was commented while the future runboard is posted for previewing by the public. 
							 * After the future runboard becomes current runboard, make this block of code active and comment out the top part for Current and Future Runboard Menu.
							 { text: "Timecards, Runsheets & Runboard", url: "/operator/secure/fetchPageController.do?landingPage=runBoardHome"},
							 { text: "Trailblazer", url: "/operator/secure/fetchPageController.do?landingPage=trailblazerHome"},
							 { text: "Traincards", url: "/operator/secure/fetchPageController.do?landingPage=trainCardHome"}, */
							/** End Current Runboard Menu */
							]
					},
					
					{
						id: "rtdRelatedInfo",
						itemdata: [							
							{ text: "Board Paper", url: "/operator/secure/fetchDocument.do?docName=/OperatorMiscFile/RTDRelatedInfo/Board_Paper.pdf", target: "_blank"},
							{ text: "Bus/Rail Operations related Projects", url: "/operator/secure/getBusRailOpProj.do"},
							{ text: "Employee Perks", url: "/operator/secure/getEmployeePerks.do"},
							{ text: "General Manager's Report", url: "/operator/secure/fetchDocument.do?docName=/OperatorMiscFile/RTDRelatedInfo/General_Manager_Report.pdf", target: "_blank"},
							{ text: "Hooked on Health - In the News", url: "http://www3.rtd-denver.com/elbert/Wellness&Rehab/in_the_news.cfm?getContent=in_the_news"},
							{ text: "Human Resources - Forms", url: "/operator/secure/fetchPageController.do?landingPage=hrFormsHome"},
							{ text: "Metro Street Guide", url: "/operator/secure/fetchDocument.do?docName=/OperatorMiscFile/RTDRelatedInfo/Metro_Street_Guide.pdf", target: "_blank"},
							{ text: "Operator Info Page Phone Book", url: "/operator/secure/fetchDocument.do?docName=/OperatorMiscFile/RTDRelatedInfo/Operator_Info_Page_Phone_Book.pdf", target: "_blank"},
							{ text: "Park-n-Ride Alphabetical List", url: "http://www.rtd-denver.com/AlphabeticalList.shtml"},
							{ text: "Pay Calendar", url: "/operator/secure/fetchDocument.do?docName=/OperatorMiscFile/RTDRelatedInfo/Pay_Calendar.pdf", target: "_blank"},
							{ text: "RTD in the news", url: "http://www3.rtd-denver.com/elbert/MediaCenter/Archive/newsReleaseArchive.cfm"},
							{ text: "RTD Fare Information", url: "http://www.rtd-denver.com/FaresPasses.shtml"},
							]
					}
					                     
                ];


function DailyTrainOrder()   
{
	alert("Please Note: Access to this link of 'Daily Train Orders' is for information purposes only\n"
	+ "and does by no means replace your obligation to 'sign-in' at the start of your run\n"
	+ "and picking up a hard-copy of the most current version of this document.");
}

function ExtraBoard()
{
  {
	var message = "Please Note: Downloads to the Extraboard link occur every day between\n";
	message += "12:30pm - 1:30pm and 5:30pm - 6:30pm. In order to receive the most\n";
	//message += "12:30pm - 1:30pm and 6:30pm - 7:30pm. In order to receive the most\n";
	message += "up-to-date work assignment data, please do NOT check for your\n";
	message += "assignment DURING those times, only before and after.\n";
	message += "\n";
	message += "Always double check your Run Assignment by looking up the\n";
	message += "information on the 'Headways, Runsheets & Runboard' page, in order to make sure\n";
	message += "you have your COMPLETE Run Assignment information. In addition,\n";
	message += "always check with your Division Supervisor to verify the\n";
	message += "assignment posted is up to date.\n";
	message += "Thank you.";
  }

  var agree=confirm(message);
  if (agree)
	{
	  window.location="/operator/secure/extraboard.do";
	}
  else{
	  return false;
  }
	  
}		