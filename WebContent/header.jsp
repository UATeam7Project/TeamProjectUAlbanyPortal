<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UAlbany Portal</title>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#D90046">
  <tr>
    <td width="20%">
      <a href="index.jsp"><h1 style="text-align:center;" color="White">UAlbany Portal</h1></a></td>
    <td width="9%">
     <a href="loginPage.jsp"><font color="White">My Account</font> </a></td>
     <% String name = (String)session.getAttribute("username");
     	if (name != null){ %>
     		<td width="9%">
          		<a href="services.jsp"><font color="White">Services</font> </a></td>
      <%}%>
    <td width="9%">
       <a href="about.jsp"><font color="White">About Us</font> </a></td>
  </tr>
</table>
</body>
</html>
