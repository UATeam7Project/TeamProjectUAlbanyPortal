<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UAlbany Portal</title>
</head>
<body background="soft-white-backgrounds-wallpapers.jpg">
        <%

        String myname = (String)session.getAttribute("username");

        if (myname == null) 
            {
            %>
            <form method=POST action="Authentication">
                <table>
                    <tr>
                        <td> Username  : </td><td> <input name="username" size=15 type="text" /> </td> 
                    </tr>
                    <tr>
                        <td> Password  : </td><td> <input name="password" size=15 type="password" /> </td> 
                    </tr>
                </table>
                <input type="submit" value="login" />
            </form>
            
            <br><br>
            No Account?&nbsp<a href="SignUp_Ualbany.jsp">Register Here</a>
            
            <% 
            }
       
        else
        {
         out.println("You are logged in as:  "+myname+"  , <a href=logout.jsp>Logout</a>");
        

        if (myname.equals("customer")){
            %>
         		<br><br>
         		<a href="customerOrders.jsp">My Orders</a><br>
         		<a href="customerScheduled.jsp">Pending Orders</a><br>
         		<a href="customerRating.jsp">Leave Seller Rating</a><br>
         	<% 
			}
        
        else if (myname.equals("client")){
            %>
				<br><br>
				<a href="clientOrders.jsp">Orders History</a><br>
         		<a href="clientScheduled.jsp">Orders to be fulfilled </a><br>
				<a href="clientContact.jsp">Contact My Users</a><br>
				<a href="clientRating.jsp">View My Rating</a><br>
			<%
			}
        }
        %>
</body>
</html>