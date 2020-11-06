<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>check your mail for reset password.....</h1>
<table align="center" >
		<tr>
			<td> <%=request.getAttribute("msg")%></td>
		</tr>
		<tr>
			<td> <a href="index.jsp" >Sign In</a> </td>
		</tr>
	</table>
</body>
</html>