<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page
	import="org.springframework.security.ui.webapp.AuthenticationProcessingFilter"%>
<%@ page
	import="org.springframework.security.ui.AbstractProcessingFilter"%>
<%@ page import="org.springframework.security.AuthenticationException"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
<div id="mainContent">


<center>


<table width="700"  border="0" cellspacing="0" cellpadding="1" summary="Outter table" style="background:#31319C">
  <tr>
    <td>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="Inside table" style="background:#ffffff">
      <tr>
        <td style="background-image:url(../images/bus_bulletin/sky.jpg);text-align:right;height:37px;color:#FE0401;font-size:large">
        <strong>
        <img src="../images/bus_bulletin/blue_pixel.gif" alt="1 pixel image" width="1" height="32" align="absmiddle">&nbsp;BUS
          BULLETINS&nbsp;</strong></td>
      </tr>
      <tr>
        <td height="4" style="background:#31319C"><img src="../images/bus_bulletin/transp_pixel.gif" alt="1 pixel image" width="1" height="1"></td>
      </tr>


<tr style="background-image: url(../images/bus_bulletin/clouds.jpg)">
	<td><br>
	<table width="100%" border="0" cellspacing="0" cellpadding="3"
		summary="Nested table">
		<tr>
			<td rowspan="2" style="vertical-align: top; text-align: right"><!-- ImageReady Slices (banner_template.psd) -->
			<table id="Table_01" width="321" height="280" border="0"
				cellpadding="0" cellspacing="0">
				<tr>
					<td rowspan="11"><img src="../images/bus_bulletin/banner_part_011.gif"
						alt="banner_part_01" width="158" height="280"></td>
					<td colspan="2"><img src="../images/bus_bulletin/banner_part_02.gif"
						alt="banner_part_02"></td>
				</tr>
				<tr>
					<td><img src="../images/bus_bulletin/banner_part_051.gif" alt="banner_part_05"
						width="100" height="30" border="0" /><a
						href="searchTransportationBulletins.cfm"
						onMouseOver="MM_swapImage('bulletinsSearch','','../images/bus_bulletin/banner_btn_over_01.gif','blank1','','../images/bus_bulletin/image4.jpg','blank2','','../images/bus_bulletin/tb_search_text.gif',1);"
						onMouseOut="MM_swapImgRestore();"></a></td>
					<td rowspan="10"><img src="../images/bus_bulletin/banner_part_03.gif"
						alt="banner_part_03"></td>
				</tr>
				<tr>
					<td><a href="/operator/secure/getTransportationBulletins.do?bus=true"
						onmouseover="MM_swapImage('bulletinsSearch1','','../images/bus_bulletin/banner_btn_over_01.gif','blank1','','../images/bus_bulletin/image4.jpg','blank2','','../images/bus_bulletin/tb_search_text.gif',1);"
						onmouseout="MM_swapImgRestore();"><img
						src="../images/bus_bulletin/banner_btn_01.gif" alt="Bulletins Search"
						name="bulletinsSearch1" width="100" height="30" border="0"
						id="bulletinsSearch1" /></a></td>
				</tr>
				<tr>
					<td><img src="../images/bus_bulletin/banner_part_051.gif" alt="banner_part_05"
						width="100" height="30" border="0" /><a
						href="transportationBulletins.cfm?sorBy=Alphabetical"
						onMouseOver="MM_swapImage('blank1','','../images/bus_bulletin/image5.jpg','blank2','','../images/bus_bulletin/tb_alpha_text.gif','alphaIndex','','../images/bus_bulletin/banner_btn_over_03.gif',1);"
						onMouseOut="MM_swapImgRestore()"></a></td>
				</tr>

				<tr>
					<td>
					<a href="transportationBulletins.cfm?sorBy=Alphabetical"
						onmouseover= "MM_swapImage('Index1', '', '../images/bus_bulletin/button_indexes_over.gif', 'blank1', '',
						'../images/bus_bulletin/image5.jpg', 'blank2', '', '../images/bus_bulletin/tb_alpha_text.gif', 1);" onmouseout="MM_swapImgRestore();">
						<img src="../images/bus_bulletin/button_indexes.gif"
						alt="View Transportation Bulletins Indexes" name="Indexes"
						width="100" height="30" border="0" id="alphaIndex1" /></a></td>
				</tr>

				<tr>
					<td><img src="../images/bus_bulletin/banner_part_051.gif" alt="banner_part_05"
						width="100" height="35" border="0" /></td>
				</tr>
				<tr>
					<td><img src="../images/bus_bulletin/banner_part_051.gif" alt="banner_part_07"
						width="100" height="35"></td>
				</tr>

				<tr>
					<td><img src="../images/bus_bulletin/banner_part_08.gif" alt="banner_part_08" /></td>
				</tr>
			</table>
			<!-- End ImageReady Slices --></td>
			<td style="vertical-align: top; text-align: center"><img
				src="../images/bus_bulletin/blank1.gif" alt="blank 1 image" name="blank1"
				width="180" height="177" id="blank1"></td>
		</tr>
		<tr style="vertical-align: top; text-align: center">
			<td><img src="../images/bus_bulletin/blank2.gif" alt="blank 2 image"
				name="blank2" width="180" height="103" id="blank2"></td>
		</tr>
	</table>
	</td>
</tr>
</table>
</td>
</tr>
</table>

</center>

</div>