<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UAlbany Portal</title>
</head>
<body>

	<%
        String myname =  (String)session.getAttribute("username");
        
        if(myname!=null)
            {
             out.println("Welcome  "+myname+"  , <a href=\"logout.jsp\" >Logout</a>");
            }
	%>

	<h2 align="center">Welcome to the UAlbany Portal.<br>
	Click on <a href="services.jsp">Services</a> to see what services we have to offer.</h2>
	<h4 align="center">Or click on <a href="loginPage.jsp">My Account</a> to login to your account.</h4>
</body>
</html>