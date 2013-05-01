<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us</title>
</head>
<body background="soft-white-backgrounds-wallpapers.jpg">

	<%
        String myname =  (String)session.getAttribute("username");
        
        if(myname!=null)
            {
             out.println("Welcome  "+myname+"  , <a href=\"logout.jsp\" >Logout</a>");
            }
	%>
	
	<h2 style="text-align:center;">This is a Project by Team 7</h2>
	<h3 style="text-align:center;"><br><br><br><br></h3>
	<p align="center"><p><font size="4" color="grey">This portal can be licensed by any service provider to extend various services to its customers.<br>
	Each of our clients can customize this page to suit their need.<br>
	<h2>Team Members include:<br>
	<br>Shreyas Chickmaglur Sunil
	<br>Ashish Agarwala
	<br>Vikas Srivastava
	<br>Richa Srivastava
	<br>Darshan Dhuwad
	<br>Harshavardhan Nandigama
	<br>Kumar Aniket
	</h2>
	</font>
</body>
</html>