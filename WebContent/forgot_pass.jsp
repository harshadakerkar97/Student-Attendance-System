<%@page import="com.cdac.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<%if(session.getAttribute("student")!=null){
	Student s=(Student)session.getAttribute("student");
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container d-flex justify-content-center align-items-center"style="height: 100vh">
	<div class="row d-flex justify-content-center align-items-center" style="height:50vh">
	<div class="col d-flex justify-content-center align-items-center">
		<spr:form action="change_pass.cdac" method="post" commandName="student">
		<spr:hidden path="studentId" />	
		<spr:hidden path="studentName" />
		<spr:hidden path="contact_no" />
		<spr:hidden path="semister" />	
		<spr:hidden path="email" />			
		Password : 
		<input type="password" name="studentPass" >
		Confirm Password : 
		<input type="password" name="confirm_studentPass">
		<input type="submit" value="change password">
		</spr:form>
	</div>
	</div>
	</div> 
</body>
</html>
<%}else{
	response.sendRedirect("index.jsp");
}
%>