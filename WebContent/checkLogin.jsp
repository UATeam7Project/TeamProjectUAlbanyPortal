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
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (username == null || password == null) {
 
                out.print("Invalid paramters ");
            }
 
            if (username.toLowerCase().trim().equals("client") && password.equals("clientPW")) {
            	String newLine = System.getProperty("line.separator");
                out.println("Welcome, Client." + newLine + "<a href=loginPage.jsp>View My Account</a>");
                session.setAttribute("username", username);
            }
           
            else if (username.toLowerCase().trim().equals("customer") && password.equals("customerPW")) {
            	String newLine = System.getProperty("line.separator");
                out.println("Welcome, Customer." + newLine + "<a href=loginPage.jsp>View My Account</a>");
                session.setAttribute("username", username);
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