<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Document Conversion</title>
</head>
<body background="soft-white-backgrounds-wallpapers.jpg">

	<%
        String myname =  (String)session.getAttribute("username");
        
        if(myname!=null)
            {
             out.println("Welcome  "+myname+"  , <a href=\"logout.jsp\" >Logout</a>");
            }
	%>

	<form method="POST" action="confirmation.jsp">
	 <%-- <p align="left"><font color="grey" size="3">Browse your computer for a file:</font>   --%>
	  
		<h4>Browse your computer for a file:</h4>  
			<input type="file" name="file" size="40">
		<br><br>
		Or
<%--	 <p align="left"><font color="grey" size="3">Enter the web address of the file to be converted:</font>   --%>
		
	<h4>Enter the web address of the file to be converted:</h4>  
		<input type="text" name="URI" value=""><br><br>
		
	<%-- <p align="left"><font color="grey" size="3">Enter the email address where you want to receive the converted file:</font>
	 --%>	
	 From file type:
	 <select name="fileTypeTo">
		<option value="pdf">pdf</option>
		<option value="pm">doc</option>
	</select>
	To file type:
	<select name="fileTypeFrom">
		<option value="doc">doc</option>
		<option value="pdf">pdf</option>
	</select>
	 
    <h4>Enter the email address where you want to receive the converted file:</h4>  
		<input type="text" name="email" value="">
		
		<br><br>
		<input type="submit" value="Start Conversion">
	
	</form>
	
	
	
	
</body>
</html>