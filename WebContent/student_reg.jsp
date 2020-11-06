<%@page import="com.cdac.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%if(session.getAttribute("student")!=null){
	Integer id=((Student)session.getAttribute("student")).getStudentId();
	System.out.println("stud_reg stud_id = "+id);%>

<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Subject Register</title>
</head>
<body>

<div class="container justify-content-center align-items-center">
<div class="row d-flex justify-content-center align-items-center"style="height:80vh">
	<div class="col-5 justify-content-center align-items-center text-light" style="height: 40vh;background:rgba(0,0,0,0.7); ">
	<h1 style="text-align: center; margin-bottom: 5px;margin-top: 5px ">Subject Registration</h1>
	<spr:form action="subject_register.cdac" method="post" commandName="attendance">
	<div class="row justify-content-center align-items-center">
		
		<div class="col-8"><spr:hidden path="studentId" value="<%=id %>"/></div>
	</div>	
	 <div class="row mt-5 d-flex justify-content-center align-items-center">
		<div class="col-3 justify-content-center align-items-center">Subject : </div>
		<div class="col-8 justify-content-center align-items-center"><spr:input path="subject"/></div>
	</div> 
	<br><div class="row" style="float:right; margin-right: 108px;">
	<div class="col justify-content-center"><input type="submit" value=" Register Subject Here"></div>
	</div>
	</spr:form>
	</div>
	</div>
	</div>
</body>
</html>

<%}
else { response.sendRedirect("index.jsp"); }
%>