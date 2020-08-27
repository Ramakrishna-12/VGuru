<%@page import="com.project.vguru.progress.mathsprogress"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="videos.css">
<title>Mathematics</title>
<script src="science.js"></script>
<style type="text/css">

#l1,#l2,#l3,#l4,#l5{
display:none;
}
</style>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("index.jsp");
	}
    String a=(String) session.getAttribute("username");
    mathsprogress s=(mathsprogress) request.getAttribute("mdata");

    String le1;
    String le2;
    String le3;
    String le4;
    String le5;
    
    if(s.getMl1()==1)
    {
    	le1="lightblue";
    }
    else
    {
    	le1="none";
    }
    if(s.getMl2()==1)
    {
    	le2="lightblue";
    }
    else
    {
    	le2="none";
    }
    if(s.getMl3()==1)
    {
    	le3="lightblue";
    }
    else
    {
    	le3="none";
    }
    if(s.getMl4()==1)
    {
    	le4="lightblue";
    }
    else
    {
    	le4="none";
    }
    if(s.getMl5()==1)
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
<form id="fml1">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="ml1">
</form>

<form id="fml2">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="ml2">
</form>

<form id="fml3">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="ml3">
</form>

<form id="fml4">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="ml4">
</form>

<form id="fml5">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="ml5">
</form>

<div id="buttons">
<button style="background-color:<% out.println(le1);%>" onclick="lecture1(); onYouTubeIframeAPIReady1();" >Lecture 1</button><br><br>
<button style="background-color:<% out.println(le2);%>" onclick="lecture2()" >Lecture 2</button><br><br>
<button style="background-color:<% out.println(le3);%>" onclick="lecture3()" >Lecture 3</button><br><br>
<button style="background-color:<% out.println(le4);%>" onclick="lecture4()" >Lecture 4</button><br><br>
<button style="background-color:<% out.println(le5);%>" onclick="lecture5()" >Lecture 5</button><br><br>
</div>
<div>
<div id="l1">
	<iframe id="ifml1" width="560" height="315" src="https://www.youtube.com/embed/Wf8JZ0VJ3aM?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>

	<h2>Lecture:Number System Part 1</h2>
</div>
<div id="l2">
	<iframe id="ifml2" width="560" height="315" src="https://www.youtube.com/embed/Xow6mE8k3bQ?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>

	<h2>Lecture:Number System - Unit Digit and Factorial</h2>
</div>
<div id="l3">
	<iframe id="ifml3" width="560" height="315" src="https://www.youtube.com/embed/OVs4BnDYzCY?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>

	<h2>Lecture:Number System - Best Trick Of Divisibility Rule </h2>
</div>
<div id="l4">
	<iframe id="ifml4" width="560" height="315" src="https://www.youtube.com/embed/BJN4r9arnKg?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>

	<h2>Lecture:NUmber System - Remainder Theorem</h2>
</div>
<div id="l5">
	<iframe id="ifml5" width="560" height="315" src="https://www.youtube.com/embed/tWQueqeiK2Q?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>

	<h2>Lecture: How to find a maximum power of a prime number</h2>
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
  player1 = new YT.Player( 'ifml1', {
    events: { 'onStateChange': onPlayerStateChange6 }
  });
  player2 = new YT.Player( 'ifml2', {
	    events: { 'onStateChange': onPlayerStateChange7 }
  });
  player3 = new YT.Player( 'ifml3', {
	    events: { 'onStateChange': onPlayerStateChange8 }
	});
  player4 = new YT.Player( 'ifml4', {
	    events: { 'onStateChange': onPlayerStateChange9 }
	});
  player5 = new YT.Player( 'ifml5', {
	    events: { 'onStateChange': onPlayerStateChange10 }
	});
}
function onPlayerStateChange6(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fml1").action="mathsupdate";
		document.getElementById("fml1").method="post";
		document.getElementById("fml1").submit();
	
	}
	
}

function onPlayerStateChange7(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fml2").action="mathsupdate";
		document.getElementById("fml2").method="post";
		document.getElementById("fml2").submit();
	}
}
function onPlayerStateChange8(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fml3").action="mathsupdate";
		document.getElementById("fml3").method="post";
		document.getElementById("fml3").submit();
	}
}
function onPlayerStateChange9(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fml4").action="mathsupdate";
		document.getElementById("fml4").method="post";
		document.getElementById("fml4").submit();
	}
}
function onPlayerStateChange10(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fml5").action="mathsupdate";
		document.getElementById("fml5").method="post";
		document.getElementById("fml5").submit();
	}
}
</script>
<script src="https://www.youtube.com/iframe_api"></script>
</body>
</html>