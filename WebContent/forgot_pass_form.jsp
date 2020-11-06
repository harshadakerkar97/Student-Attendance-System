<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password Form</title>
</head>
<body>
	<form action="forgot_pass.cdac" method="post" >
	<table align="center" >
		<tr>
			<td>
				Enter Your Registered Mail ID:
			</td>
			<td>
				<input type="text" name="email">
			</td>
		</tr>
		
		<tr>
			<td>
				<a href="index.jsp" >Back</a>
			</td>
			<td>
				<input type="submit"  value="Submit" >
			</td>
		</tr>
	</table>
	</form>
</body>
</html>