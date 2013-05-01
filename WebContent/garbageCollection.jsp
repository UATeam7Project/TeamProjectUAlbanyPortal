<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Garbage Collection Service</title>
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
	<form method="POST" action="confirmation.jsp">
	
	<h3>Select the Service Provider from the list below:</h3>
	<select name="Service_Provider">
  		<option value="Select Service Provider">Select Service Provider</option>
  		<option value="Albany Garbage Co.">Albany Garbage Co</option>
  		<option value="Capital District Garbage Disposal">Capital District Garbage Disposal</option>
  		<option value="Albany Waste Management">Albany Waste Management</option>
	</select>
	<br><br>
	<h3>Select the desired time from the list below:</h3>
	<select name="time">
		<option value="12:00">12:00</option>
  		<option value="12:30">12:30</option>
  		<option value="01:00">01:00</option>
  		<option value="01:30">01:30</option>
  		<option value="02:00">02:00</option>
  		<option value="02:30">02:30</option>
  		<option value="03:00">03:00</option>
  		<option value="03:30">03:30</option>
  		<option value="04:00">04:00</option>
  		<option value="04:30">04:30</option>
  		<option value="05:00">05:00</option>
  		<option value="05:30">05:30</option>
  		<option value="06:00">06:00</option>
  		<option value="06:30">06:30</option>
  		<option value="07:00">07:00</option>
  		<option value="07:30">07:30</option>
  		<option value="08:00">08:00</option>
  		<option value="08:30">08:30</option>
  		<option value="09:00">09:00</option>
  		<option value="09:30">09:30</option>
  		<option value="10:00">10:00</option>
  		<option value="10:30">10:30</option>
  		<option value="11:00">11:00</option>
  		<option value="11:30">11:30</option>
	</select>
	
	<select name="ampm">
		<option value="am">AM</option>
		<option value="pm">PM</option>
	</select>
	
	<br><br>
	<input value="Street Address" align="right" type="text" name="address" value="" required>

	<br><br>
	<input value=City type="text" name="city" value="" required>

	<br><br>
	<input value=ZipCode type="text" name="zipcode" value="" required>
	
	<br><br>
	<input value=EMail type="text" name="email" value="" required>
	
	<br><br>
	<input value="Phone Number (Optional)" type="text" name="phone" value="">

	<br><br>
	<input type="submit" value="Submit">
	
	</form>
	

</body>
</html>