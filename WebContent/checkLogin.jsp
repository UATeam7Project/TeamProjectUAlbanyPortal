<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%
            String varusername = (String)request.getParameter("username");
			String varusertype = (String)request.getParameter("usertype");
			System.out.println(varusername);
            if (varusername == null) {
 
                out.print("Invalid paramters");
            }
 
            if (varusertype.toLowerCase().trim().equals("sProvider")) {
            	String newLine = System.getProperty("line.separator");
                out.println("Welcome, Service Provider." + newLine + "<a href=loginPage.jsp>View My Account</a>");
            }
           
            else if (varusername.toLowerCase().trim().equals("sUser")) {
            	String newLine = System.getProperty("line.separator");
                out.println("Welcome, Service User" + newLine + "<a href=loginPage.jsp>View My Account</a>");
            }

            else
               {
                out.println("Invalid username or password");
                %>
                <br><br>
                <a href="loginPage.jsp">Retry</a>
                <%
           }
 
 
 
 
%> 
</body>
</html>