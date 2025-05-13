<!-- Begin Menu dependant stuff -->
<!-- Core + Skin CSS -->
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<!--- do not remove the container css below it will break yui panel functionality!!!! --->
<link rel="stylesheet" type="text/css" href="../scripts/container.css">
<script type="text/javascript" src="../scripts/yahoo-dom-event.js"></script>
<script type="text/javascript" src="../scripts/container-min.js"></script>

<!-- Page-specific script -->
<script type="text/javascript" language="javascript">
    // the appServer variable is used in templates other than this one,
    // bevery careful with it


    /*
         Initialize and render the MenuBar when its elements are ready 
         to be scripted.
    */

    YAHOO.util.Event.onContentReady("productsandservices", function () {

        /*
             Instantiate a MenuBar:  The first argument passed to the 
             constructor is the id of the element in the page 
             representing the MenuBar; the second is an object literal 
             of configuration properties.
        */

        var oMenuBar = new YAHOO.widget.MenuBar("productsandservices", { 
                                                    autosubmenudisplay: true, 
                                                    hidedelay: 750,
                                                    scrollincrement: 8, 
                                                    lazyload: true });



        /*
             Subscribe to the "beforerender" event, adding a submenu 
             to each of the items in the MenuBar instance.
        */

        oMenuBar.subscribe("beforeRender", function () {

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
<script type="text/javascript" src="../scripts/menu-min.js"></script>
<!-- local data and links for rest of site -->

<!-- end menu stuff -->

<!-- Add Stylesheet -->
<link rel="stylesheet" type="text/css" href="../css/RTD_element_styles.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="../css/RTD_ajax_styles.css">
<!-- added for iphone browser render issue -->
<link rel="stylesheet" type="text/css" href="../scripts/button.css">
<!-- end iphone browser render issue -->

<SCRIPT language="JavaScript">
function note()   
{
	alert("Please Note: Access to this link of 'Daily Train Orders' is for information purposes only and does by no means\n"
	+ "replace your obligation to 'sign-in' at the start of your run and picking up a hard-copy of the most\n"
	+ "current version of this document.");
}

function Disclaimer() {
    msgWindow = window.open('','targetname','scrollbars=yes,WIDTH=540,HEIGHT=590');
    msgWindow.location.href = '/WEB-INF/jsp/OBB_Disclaimer.jsp';
    if (msgWindow.opener == null) msgWindow.opener = self;
}
</SCRIPT>