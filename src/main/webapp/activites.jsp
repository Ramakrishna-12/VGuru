<%@page import="com.project.vguru.progress.activitiesprogress"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="videos.css">
<title>Activities</title>
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
    
    
    
    activitiesprogress s=(activitiesprogress) request.getAttribute("adata");

    String le1;
    String le2;
    String le3;
    String le4;
    String le5;
    
    if(s.getAl1()==1)
    {
    	le1="lightblue";
    }
    else
    {
    	le1="none";
    }
    if(s.getAl2()==1)
    {
    	le2="lightblue";
    }
    else
    {
    	le2="none";
    }
    if(s.getAl3()==1)
    {
    	le3="lightblue";
    }
    else
    {
    	le3="none";
    }
    if(s.getAl4()==1)
    {
    	le4="lightblue";
    }
    else
    {
    	le4="none";
    }
    if(s.getAl5()==1)
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


<form id="fal1">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="al1">
</form>

<form id="fal2">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="al2">
</form>

<form id="fal3">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="al3">
</form>

<form id="fal4">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="al4">
</form>

<form id="fal5">
<input type="hidden" name="email" value=<% out.println(a);%>>
<input type="hidden" name="l" value="al5">
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
	<iframe id="ifal1" width="560" height="315" src="https://www.youtube.com/embed/GYtJKrbqhiQ?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>

	<h2>Lecture: How Your Body Parts Works</h2>
</div>
<div id="l2">
	<iframe id="ifal2" width="560" height="315" src="https://www.youtube.com/embed/v8SgKJK1kLY?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>

	<h2>Lecture: General Knowledge</h2>
</div>
<div id="l3">
	<iframe id="ifal3" width="560" height="315" src="https://www.youtube.com/embed/YAxLueEKqmU?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>

	<h2>Lecture: How Good Are Your Eyes? </h2>
</div>
<div id="l4">
	<iframe id="ifal4" width="560" height="315" src="https://www.youtube.com/embed/VY0E01G6ZWE?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>

	<h2>Lecture: Which one are you ?</h2>
	<h2>Left Brain</h2>
	<h2>Right Brain</h2>
</div>
<div id="l5">
	<iframe id="ifal5" width="560" height="315" src="https://www.youtube.com/embed/aEZ3GRGvozg?enablejsapi=1" 
	frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
	allowfullscreen></iframe>

	<h2>Lecture: Mental Age Test </h2>
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
  player1 = new YT.Player( 'ifal1', {
    events: { 'onStateChange': onPlayerStateChange11 }
  });
  player2 = new YT.Player( 'ifal2', {
	    events: { 'onStateChange': onPlayerStateChange12 }
  });
  player3 = new YT.Player( 'ifal3', {
	    events: { 'onStateChange': onPlayerStateChange13 }
	});
  player4 = new YT.Player( 'ifal4', {
	    events: { 'onStateChange': onPlayerStateChange14 }
	});
  player5 = new YT.Player( 'ifal5', {
	    events: { 'onStateChange': onPlayerStateChange15 }
	});
}
function onPlayerStateChange11(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fal1").action="activitiesupdate";
		document.getElementById("fal1").method="post";
		document.getElementById("fal1").submit();
	}
	
}

function onPlayerStateChange12(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fal2").action="activitiesupdate";
		document.getElementById("fal2").method="post";
		document.getElementById("fal2").submit();
	}
}
function onPlayerStateChange13(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fal3").action="activitiesupdate";
		document.getElementById("fal3").method="post";
		document.getElementById("fal3").submit();
	}
}
function onPlayerStateChange14(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fal4").action="activitiesupdate";
		document.getElementById("fal4").method="post";
		document.getElementById("fal4").submit();
	}
}
function onPlayerStateChange15(event) 
{
	if (event.data == 0)
	{
		document.getElementById("fal5").action="activitiesupdate";
		document.getElementById("fal5").method="post";
		document.getElementById("fal5").submit();
	}
}
</script>

<script src="https://www.youtube.com/iframe_api"></script>


</body>
</html>