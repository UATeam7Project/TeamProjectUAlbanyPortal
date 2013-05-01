<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
</head>
<body  background="soft-white-backgrounds-wallpapers.jpg"> 
<p align="right">&nbsp;</p>
<form method="POST" action=Register>

<table align="center" width="40%">
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
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td><p>Already a member?</p></td>
<td><a href="index.jsp">Sign In here</a>
</td>
</tr>
<tr>
  <td>Email Address </td>
     <td><input type="text" name="emailInput" size="20"></td>
</tr>
<tr>
  <td >Password</td>
     <td ><input type="password" name="passwordInput" SIZE="20"></td>
</tr>
<tr>
<td>First Name</td>
     <td ><input type="text" name="fNameInput" SIZE="20"></td>
</tr>
<tr>
<td>Last Name</td>
     <td ><input type="text" name="lNameInput" SIZE="20"></td>
</tr>
<tr>
<td >Type of User Account</td>
    <td>
    <select name="Account_Type">
  		<option value="sProvider">Service Provider</option>
  		<option value="sUser">Service User</option>
	</select>
	</td>
</tr>
<tr>
<td>Street Address</td>
     <td ><input type="text" name="sAddrInput" SIZE="20"></td>
</tr>
<tr>
<td>City</td>
     <td ><input type="text" name="cityInput" SIZE="20"></td>
</tr>
<tr>
<td>Zip Code</td>
     <td ><input type="text" name="zipCodeInput" SIZE="20"></td>
</tr>
<tr>
  <td></td>
     <td><input type="submit" value="Create Account"></td>
</tr>
<tr><td></td>
</tr>
</table>
</form>

</body>
</html>