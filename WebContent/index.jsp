<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UAlbany Portal</title>
</head>
<body  background= "soft-white-backgrounds-wallpapers.jpg">

	<%
        String myname =  (String)session.getAttribute("username");
        
        if(myname!=null)
            {
        	out.println("You are logged in as:  "+myname+"  , <a href=logout.jsp>Logout</a>");
            }
	%>

	<%--<h2 align="center">Welcome to the UAlbany Portal.<br></h2>
	 --%>
	
	<%
	String myname1 =  (String)session.getAttribute("username");
    
    if(myname1==null){%>
<%--		<h4 align="right"><a href="loginPage.jsp">Log in</a></h4>
 --%>
		 <form method=POST action="checkLogin.jsp">
                <table align="right" width="40%">
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    
                    <tr>
                        <td> Username  : </td><td> <input name="username" size=15 type="text" /> </td> 
                    </tr>
                    <tr>
                        <td> Password  : </td><td> <input name="password" size=15 type="password" /> </td> 
                    </tr>
                    <tr>
                     <td></td>
                         <td><input type="checkbox" name="id" value="Remember me"> Remember me </td>
                   </tr>
                    
                    <tr>
                    <td></td>
                    <td><input type="submit" value="login" /></td>
                    </tr>
                    <tr><td></td>
                    <td>
                      <a href="SignUp_Ualbany.jsp"><font color="#424242" size="3">New user register HERE</font> </a></td>
                    </tr>
                </table>
                
            </form>
		
		  <% 
            }
        %>
	<table align="left" width="50%" >
 <tr>
   <td>
     <p align="left"><font color="Blue" size="6">Welcome to the UAlbany Portal</font></td>
   
  </tr>
  <tr><td></td></tr>
  <tr>
  <td>
  <p align="left"><font color="#424242" size="4">One-stop shop for your Garbage Collection and Format Conversion 
  woes.  We will get you in touch with people who will do the work when you want it to be done without emptying 
  your purse. With us you will find a dedicated team of professionals who really care. Don't trust our words? 
  Give us a chance to prove us right. Use our services and say goodbye to your problems.
  <br><br>Services Offered:<br>
  1. Domestic & Commercial Garbage Collection Services.<br>
  2. Document Conversion Service.<br>
  & Many more to come...<br><br>
  Please Log In to access these services.
  
  </font></p></td>
  </tr>
 </table>
	
</body>
</html>