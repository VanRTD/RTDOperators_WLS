<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ page import="org.springframework.security.ui.webapp.AuthenticationProcessingFilter"%>
<%@ page import="org.springframework.security.ui.AbstractProcessingFilter"%>
<%@ page import="org.springframework.security.AuthenticationException"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div id="mainContent">
<center><script language="JavaScript" type="text/JavaScript">
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
<table width="700"  border="0" cellspacing="0" cellpadding="1" summary="Outter table" style="background:#31319C">
  <tr>
    <td>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="Inside table" style="background:#ffffff">
      <tr>
        <td style="background-image:url(../images/sky.jpg);text-align:right;height:37px;color:#FE0401;font-size:large"><strong><img src="../images/blue_pixel.gif" alt="1 pixel image" width="1" height="32" align="absmiddle">&nbsp;LIGHT RAIL
          BULLETINS&nbsp;</strong></td>
      </tr>
      <tr>
        <td height="4" style="background:#31319C"><img src="../images/transp_pixel.gif" alt="1 pixel image" width="1" height="1"></td>
      </tr>
		<tr style="background-image: url(../images/clouds.jpg)">
	<td><br>
	<table width="100%" border="0" cellspacing="0" cellpadding="3"
		summary="Nested table">
		<tr>
			<td rowspan="2" style="vertical-align: top; text-align: right"><!-- ImageReady Slices (banner_template.psd) -->
			<table id="Table_01" width="321" height="280" border="0"
				cellpadding="0" cellspacing="0">
				<tr>
					<td width="158" rowspan="11"><img src="../images/banner.gif"
						alt="Light Rail Bulletins image" width="158" height="280" /></td>
					<td colspan="2"><img src="../images/banner_btn_02.gif"
						alt="part 2" width="163" height="44" /></td>
				</tr>
				<tr>
					<td><img src="../images/banner_part_041.gif" alt="part 4"
						width="100" height="30" /></td>
					<td width="61" rowspan="10"><img
						src="../images/banner_part_03.gif" alt="banner_part_03" width="63"
						height="236" /></td>
				</tr>
				<tr>
					<td width="102"><a
						href="/operator/secure/getTransportationBulletins.do?bus=false"
						onmouseover="MM_swapImage('Search1','','../images/banner_btn_over_01.gif','blank1','','../images/image5.jpg','blank2','','../images/tb_search_text.gif',1)"
						onmouseout="MM_swapImgRestore()"><img
						src="../images/banner_btn_01.gif" alt="Search Bulletins"
						name="Search" width="100" height="30" border="0" /></a></td>
				</tr>
				<tr>
					<td><img src="../images/banner_part_041.gif" alt="part 4"
						width="100" height="30" /></td>
				</tr>


				<tr>
					<td><a href="LightRailBulletins.cfm?sorBy=Alphabetical"
						onmouseover="MM_swapImage('Index1', '', '../images/button_indexes_over.gif', 'blank1', '',
						'../images/image3.jpg', 'blank2', '', '../images/tb_indexes_text.gif', 1);
						onmouseout=MM_swapImgRestore();">
						<img src="../images/button_indexes.gif"
						alt="View LightRail Bulletins Indexes" name="Indexes" width="100"
						height="30" border="0" id="alphaIndex1" /></a></td>
				</tr>

				<tr>
					<td><img src="../images/banner_part_071.gif" alt="part 7"
						width="100" height="33" /></td>
				</tr>


				<tr>
					<td><img src="../images/banner_part_071.gif" alt="part 7"
						width="100" height="33" /></td>
				</tr>
				<tr>
					<td><img src="../images/banner_part_08.gif" alt="Part 8"
						width="100" height="50" /></td>
				</tr>
			</table>
			</td>
			<!-- End ImageReady Slices -->
			<td style="vertical-align: top; text-align: center"><img
				src="../images/blank1.gif" alt="blank 1 image" name="blank1"
				width="180" height="177" id="blank1"></td>
		</tr>
		<tr style="vertical-align: top; text-align: center">
			<td><img src="../images/blank2.gif" alt="blank 2 image"
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