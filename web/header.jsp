<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%
if(session.isNew())
    response.sendRedirect("index.jsp");
%>

<html>
<head>
<title>Untitled</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta name="generator" content="Web Page Maker">

<style type="text/css">
/*----------Text Styles----------*/
.ws6 {font-size: 8px;}
.ws7 {font-size: 9.3px;}
.ws8 {font-size: 11px;}
.ws9 {font-size: 12px;}
.ws10 {font-size: 13px;}
.ws11 {font-size: 15px;}
.ws12 {font-size: 16px;}
.ws14 {font-size: 19px;}
.ws16 {font-size: 21px;}
.ws18 {font-size: 24px;}
.ws20 {font-size: 27px;}
.ws22 {font-size: 29px;}
.ws24 {font-size: 32px;}
.ws26 {font-size: 35px;}
.ws28 {font-size: 37px;}
.ws36 {font-size: 48px;}
.ws48 {font-size: 64px;}
.ws72 {font-size: 96px;}
.wpmd {font-size: 13px;font-family: 'Arial';font-style: normal;font-weight: normal;}
/*----------Para Styles----------*/
DIV,UL,OL /* Left */
{
 margin-top: 0px;
 margin-bottom: 0px;
}
</style>


<script language="JavaScript1.4" type="text/javascript">
<!--
function jsPlay(soundobj) {
 var thissound= eval("document."+soundobj);
 try {
     thissound.Play();
 }
 catch (e) {
     thissound.DoPlay();
 }
}
//-->
</script>

<script language="javascript" type="text/javascript">
<!--
function MM_swapImgRestore() {
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() {
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) {
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() {
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

//-->
</script>

</head>

<body>

<div id="image1" style="position:absolute; overflow:hidden; left:0px; top:23px; width:132px; height:109px; z-index:0"><img src="images/logo.jpg" alt="" title="" border=0 width=132 height=109></div>

<div id="image2" style="position:absolute; overflow:hidden; left:1330px; top:25px; width:132px; height:109px; z-index:1"><img src="images/logo.jpg" alt="" title="" border=0 width=132 height=109></div>

<div id="nav10d" style="position:absolute; left:139px; top:73px; z-index:2"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav10','','images/nav8825995930a.gif',1)" href="header.jsp"><img name="nav10" onLoad="MM_preloadImages('images/nav8825995930a.gif')" alt="" border=0 src="images/nav8825995930i.gif"></a></div>
<div id="nav11d" style="position:absolute; left:287px; top:73px; z-index:2"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav11','','images/nav8825995931a.gif',1)" href="InsertStudent.jsp"><img name="nav11" onLoad="MM_preloadImages('images/nav8825995931a.gif')" alt="" border=0 src="images/nav8825995931i.gif"></a></div>
<div id="nav12d" style="position:absolute; left:435px; top:73px; z-index:2"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav12','','images/nav8825995932a.gif',1)" href="SearchStudent.jsp"><img name="nav12" onLoad="MM_preloadImages('images/nav8825995932a.gif')" alt="" border=0 src="images/nav8825995932i.gif"></a></div>
<div id="nav13d" style="position:absolute; left:583px; top:73px; z-index:2"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav13','','images/nav8825995933a.gif',1)" href="SearchAll.jsp"><img name="nav13" onLoad="MM_preloadImages('images/nav8825995933a.gif')" alt="" border=0 src="images/nav8825995933i.gif"></a></div>
<div id="nav14d" style="position:absolute; left:731px; top:73px; z-index:2"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav14','','images/nav8825995934a.gif',1)" href="DeleteStudent.jsp"><img name="nav14" onLoad="MM_preloadImages('images/nav8825995934a.gif')" alt="" border=0 src="images/nav8825995934i.gif"></a></div>
<div id="nav15d" style="position:absolute; left:879px; top:73px; z-index:2"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav15','','images/nav8825995935a.gif',1)" href="SearchUpdate.jsp"><img name="nav15" onLoad="MM_preloadImages('images/nav8825995935a.gif')" alt="" border=0 src="images/nav8825995935i.gif"></a></div>
<div id="nav16d" style="position:absolute; left:1027px; top:73px; z-index:2"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav16','','images/nav8825995936a.gif',1)" href="#"><img name="nav16" onLoad="MM_preloadImages('images/nav8825995936a.gif')" alt="" border=0 src="images/nav8825995936i.gif"></a></div>
<div id="nav17d" style="position:absolute; left:1175px; top:73px; z-index:2"><a onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('nav17','','images/nav8825995937a.gif',1)" href="#"><img name="nav17" onLoad="MM_preloadImages('images/nav8825995937a.gif')" alt="" border=0 src="images/nav8825995937i.gif"></a></div>

<div id="image3" style="position:absolute; overflow:hidden; left:134px; top:118px; width:1019px; height:203px; z-index:3"><img src="images/faculty.jpg" alt="" title="" border=0 width=1019 height=203></div>
<A href="signout.jsp">SignOut</A>
</body>
</html>
