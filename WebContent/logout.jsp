<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="soft-white-backgrounds-wallpapers.jpg">
<%
 
     String username=(String)session.getAttribute("username");
    if(username!=null)
        {
           out.println(username+" has been logged out, <a href=\"index.jsp\">Go Back Home</a>");
            session.removeAttribute("username");
             
        }
     else 
         {
         out.println("You are not logged in <a href=\"loginPage.jsp\">Back</a>");
     }
 
 
 
%>  
</body>
</html>