<%@ include file="header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Services Offered</title>
</head>
<body background="soft-white-backgrounds-wallpapers.jpg">
        
        <%
        String myname =  (String)session.getAttribute("username");
        
        if(myname!=null)
            {
             out.println("Welcome  "+myname+"  , <a href=\"logout.jsp\" >Logout</a>");
            }
        %>
<table align="center" width="50%" >
 <tr>
   <td>
     <p align="left"><font color="Blue" size="5">Browse Services Offered</font></td>
   
  </tr>
  <tr><td><a href="garbageCollection.jsp">Domestic and Commercial Garbage Collection</a></td>

  
  <tr><td><a href=documentConversion.jsp>Document Format Conversion</a></td>
  
  <tr><td> Your Service Here...</td></tr>

  
  
  
 </table>

</body>
</html>