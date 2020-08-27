
function lecture1()
{
	document.getElementById("l1").style.display="inline";
	document.getElementById("l2").style.display="none";
	document.getElementById("l3").style.display="none";
	document.getElementById("l4").style.display="none";
	document.getElementById("l5").style.display="none";
	
}
function lecture2()
{
	document.getElementById("l1").style.display="none";
	document.getElementById("l2").style.display="inline";
	document.getElementById("l3").style.display="none";
	document.getElementById("l4").style.display="none";
	document.getElementById("l5").style.display="none";
	
}
function lecture3()
{
	document.getElementById("l1").style.display="none";
	document.getElementById("l2").style.display="none";
	document.getElementById("l3").style.display="inline";
	document.getElementById("l4").style.display="none";
	document.getElementById("l5").style.display="none";
	
}
function lecture4()
{
	document.getElementById("l1").style.display="none";
	document.getElementById("l2").style.display="none";
	document.getElementById("l3").style.display="none";
	document.getElementById("l4").style.display="inline";
	document.getElementById("l5").style.display="none";
	
}
function lecture5()
{
	document.getElementById("l1").style.display="none";
	document.getElementById("l2").style.display="none";
	document.getElementById("l3").style.display="none";
	document.getElementById("l4").style.display="none";
	document.getElementById("l5").style.display="inline";
	
}
document.getElementById('v').addEventListener('ended',myHandler,false);
function myHandler(e) 
{
	alert("finished");
}