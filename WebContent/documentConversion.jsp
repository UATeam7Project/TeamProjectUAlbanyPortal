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
	<p style="text-align:right">
	<%
        String myname =  (String)session.getAttribute("username");
        
        if(myname!=null)
            {
             out.println("Welcome  "+myname+"  , <a href=\"logout.jsp\" >Logout</a>");
            }
	%>
	</p>
	<form method="POST" action="conversion.jsp">
		
	<h4>Enter the web address of the file to be converted:</h4>  
		<input type="text" name="URI" value=""><br><br>
		
	 From file type:
	 <select name="fileTypeTo">
		<option value="pdf">PDF</option>
		<option value="pm">DOCX</option>
	</select>
	
	To file type:
	<select name="fileTypeFrom">
		<option value="doc">DOCX</option>
		<option value="pdf">PDF</option>
	</select>
	
		<br><br>
		<input type="submit" value="Start Conversion">
	
	</form>
</body>
</html>