<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title><decorator:title default="RTD Operator" /></title>
<meta name="robots" content="noindex, follow">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/main.css"/>" />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/RTD_element_styles.css"/>" />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/RTD_ajax_styles.css"/>" />
<!-- added for iphone browser render issue -->
<link rel="stylesheet" type="text/css" href="<c:url value="/css/button.css"/>" />
<!-- end iphone browser render issue -->
<link rel="stylesheet" type="text/css" href="<c:url value="/css/menu.css"/>" />
<!-- do not remove the container css below it will break yui panel functionality!!!! -->
<link rel="stylesheet" type="text/css" href="<c:url value="/css/container.css"/>" />
<script type="text/javascript" src="<c:url value="/js/yahoo-dom-event.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/container-min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/menu-min.js"/>"></script>
<!-- local data and links for rest of site -->


	

<sec:authorize ifAnyGranted="ROLE_OPERATOR_EMP,ROLE_ADMIN">	
	<script type="text/javascript" src="<c:url value="/js/menuVar.js"/>"></script>
</sec:authorize>
<sec:authorize ifAnyGranted="ROLE_OPERATOR_CONT">
	<script type="text/javascript" src="<c:url value="/js/menuVarContractor.js"/>"></script>
</sec:authorize>



<!-- Page-specific script -->
<script type="text/javascript" language="javascript">
	/*
	     Initialize and render the MenuBar when its elements are ready 
	     to be scripted.
	 */

	YAHOO.util.Event.onContentReady("productsandservices", function() {
		/*
		     Instantiate a MenuBar:  The first argument passed to the 
		     constructor is the id of the element in the page 
		     representing the MenuBar; the second is an object literal 
		     of configuration properties.
		 */

		var oMenuBar = new YAHOO.widget.MenuBar("productsandservices", {
			autosubmenudisplay : true,
			hidedelay : 750,
			scrollincrement : 8,
			lazyload : true
		});

		/*
		     Subscribe to the "beforerender" event, adding a submenu 
		     to each of the items in the MenuBar instance.
		 */

		oMenuBar.subscribe("beforeRender", function() {

			if (this.getRoot() == this) {

				this.getItem(0).cfg.setProperty("submenu", aSubmenuData[0]);
				this.getItem(1).cfg.setProperty("submenu", aSubmenuData[1]);
				this.getItem(2).cfg.setProperty("submenu", aSubmenuData[2]);
				this.getItem(3).cfg.setProperty("submenu", aSubmenuData[3]);

			}

		});

		/*
		     Call the "render" method with no arguments since the 
		     markup for this MenuBar instance is already exists in 
		     the page.
		 */

		oMenuBar.render();

	});
</script>


<!-- end menu stuff -->

<script language="JavaScript">
function note() {
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
	message += "information on the 'Headways & Runboard' page, in order to make sure\n";
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

//Google Analytics Asycnhronous
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-11199061-6']);
_gaq.push(['_trackPageview']);
(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>

</head>

<sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_OPERATOR_EMP,ROLE_OPERATOR_CONT,ROLE_LOGGEDIN,ROLE_ANONYMOUS">

	<body class="yui-skin-sam">
	<div id="wrapper">   
	   	<c:import url="/WEB-INF/decorators/header.jsp" />
		<div id="bodyWrapper">  
	   		<decorator:body/>
		</div>   
		<!-- footer area is same on all inside pages -->
		<c:import url="/WEB-INF/decorators/footer.jsp" />
	</div>
	</body>

</sec:authorize>

</html>
