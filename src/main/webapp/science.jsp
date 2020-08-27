<%@page import="com.project.vguru.progress.scienceprogress"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Science</title>
<script src="science.js"></script>
<link rel="stylesheet" type="text/css" href="videos.css">

</head>
<body>





<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("index.jsp");
	}
    String a=(String) session.getAttribute("username");
    scienceprogress s=(scienceprogress) request.getAttribute("sdata");

    String le1;
    String le2;
    String le3;
    String le4;
    String le5;
    
    if(s.getSl1()==1)
    {
    	le1="lightblue";
    }
    else
    {
    	le1="none";
    }
    if(s.getSl2()==1)
    {
    	le2="lightblue";
    }
    else
    {
    	le2="none";
    }
    if(s.getSl3()==1)
    {
    	le3="lightblue";
    }
    else
    {
    	le3="none";
    }
    if(s.getSl4()==1)
    {
    	le4="lightblue";
    }
    else
    {
    	le4="none";
    }
    if(s.getSl5()==1)
    {
    	le5="lightblue";
    }
    else
    {
    	le5="none";
    }
    
    
    
    
%>



<header>
<a href="home.jsp"><h1>VGuru</h1></a>  

<form id="logout" method="post" action="progressparent">
<input type="hidden" name="email" value=<%out.println(a); %>>
<input type="submit" value="Logout">
</form>

<form id="profile" method="post" action="profile">
<input type="hidden" name="name1" value=<% out.print(a); %> >
<input type="submit" value="Profile">
</form>

<form id="covid" action="https://www.covid19india.org/" target="_blank">
<input type="submit" value="Covid-19">
</form>
</header>


<form id="fsl1">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="sl1">
</form>

<form id="fsl2">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="sl2">
</form>

<form id="fsl3">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="sl3">
</form>

<form id="fsl4">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="sl4">
</form>

<form id="fsl5">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="sl5">
</form>


<div id="buttons">

<button style="background-color:<% out.println(le1); %>" onclick="lecture1()" >Lecture 1</button><br><br>
<button style="background-color:<% out.println(le2); %>" onclick="lecture2()" >Lecture 2</button><br><br>
<button style="background-color:<% out.println(le3); %>" onclick="lecture3()" >Lecture 3</button><br><br>
<button style="background-color:<% out.println(le4); %>" onclick="lecture4()" >Lecture 4</button><br><br>
<button style="background-color:<% out.println(le5); %>" onclick="lecture5()" >Lecture 5</button><br><br>
</div>

<div>
<div id="l1">

	<iframe id="ifsl1" width="560" height="315" src="https://www.youtube.com/embed/2oOOap8AIKI?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe> 
	<h2>Lecture: Motion and time</h2>
</div>
<div id="l2">
	<iframe id="ifsl2" width="560" height="315" src="https://www.youtube.com/embed/2nvjxNVEGe8?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>
	<h2>Lecture: Acids,Bases and Salts</h2>
</div>
<div id="l3">
	<iframe id="ifsl3" width="560" height="315" src="https://www.youtube.com/embed/HEAqnvOBG-k?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>
	<h2>Lecture: Winds,Stromes and Cyclones </h2>
</div>
<div id="l4">
	<iframe id="ifsl4" width="560" height="315" src="https://www.youtube.com/embed/kLo5hvPZWRQ?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>
	<h2>Lecture: Soil</h2>
</div>
<div id="l5">
	<iframe id="ifsl5" width="560" height="315" src="https://www.youtube.com/embed/-Pzf7A_FOlc?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>
	<h2>Lecture: Electric current </h2>
</div>
</div>

<script src="science.js"></script>


<script>
var player1;
var player2;
var player3;
var player4;
var player5;
function onYouTubeIframeAPIReady() 
{
  player1 = new YT.Player( 'ifsl1', {
    events: { 'onStateChange': onPlayerStateChange1 }
  });
  player2 = new YT.Player( 'ifsl2', {
	    events: { 'onStateChange': onPlayerStateChange2 }
  });
  player3 = new YT.Player( 'ifsl3', {
	    events: { 'onStateChange': onPlayerStateChange3 }
	});
  player4 = new YT.Player( 'ifsl4', {
	    events: { 'onStateChange': onPlayerStateChange4 }
	});
  player5 = new YT.Player( 'ifsl5', {
	    events: { 'onStateChange': onPlayerStateChange5 }
	});
}
function onPlayerStateChange1(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fsl1").action="scienceupdate";
		document.getElementById("fsl1").method="post";
		document.getElementById("fsl1").submit();
		//alert("1");
	}
	
}

function onPlayerStateChange2(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fsl2").action="scienceupdate";
		document.getElementById("fsl2").method="post";
		document.getElementById("fsl2").submit();
		//alert("2");
	}
}
function onPlayerStateChange3(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fsl3").action="scienceupdate";
		document.getElementById("fsl3").method="post";
		document.getElementById("fsl3").submit();
		//alert("3");
	}
}
function onPlayerStateChange4(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fsl4").action="scienceupdate";
		document.getElementById("fsl4").method="post";
		document.getElementById("fsl4").submit();
		//alert("4");
	}
}
function onPlayerStateChange5(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fsl5").action="scienceupdate";
		document.getElementById("fsl5").method="post";
		document.getElementById("fsl5").submit();
		//alert("5");
	}
}

</script>


<script src="https://www.youtube.com/iframe_api"></script>




</body>
</html>