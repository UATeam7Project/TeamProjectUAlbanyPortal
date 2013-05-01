<%@page import="teamProject.*"%>
<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head><%
	String a =  request.getParameter("address"); 
	String c =  request.getParameter("city"); 
	String z =  request.getParameter("zipcode"); 
	String e =  request.getParameter("email");
	String p =  request.getParameter("phone"); 
	String t = request.getParameter("time");
	String ap = request.getParameter("ampm");
	String b =  garbageCollection.init(a, c, z, e, p, t, ap);
	sendMail.send(e);%>
<body background="soft-white-backgrounds-wallpapers.jpg">
	<br><br>
	<font size=4 color="grey" style="text-align:center">You will receive a confirmation email shortly...
	<a href="index.jsp" >Click Here to go back home</a></font>
</body>
</html>