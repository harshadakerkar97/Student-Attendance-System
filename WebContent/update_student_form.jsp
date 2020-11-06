<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="spr" uri="http://www.springframework.org/tags/form" %>
   <%if(session.getAttribute("admin")!=null){  %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Login Form</title>
  </head>
<body>
	<div class="container" style="height: 100vh;">
	<div class="row mt-5 bg-warning d-flex justify-content-center align-items-center" style="heigth:50vh">
	<div class="col-5" style="flex-direction: column">
	<h1 style="text-align: center;margin-bottom: 2px">Update Form</h1>
	<spr:form action="update.cdac" method="post" commandName="student">
	<div class="row mt-4 justify-content-center align-items-center">
		<div class="col-3">Student Id : </div>
		<div class="col-8 "><spr:input path="studentId" required="required"/>
	</div>
	</div>
	<div class="row justify-content-center align-items-center">
		<div class="col-3">Student Name : </div>
		<div class="col-8"><spr:input path="studentName" required="required"/>
	</div>
	</div>
	<div class="row justify-content-center align-items-center">
		<div class="col-3">Email : </div>
		<div class="col-8"><spr:input path="email" required="required"/>
	</div>
	</div>
	<div class="row justify-content-center align-items-center">
		<div class="col-3">Contact Number : </div>
		<div class="col-8"><spr:input path="contact_no" required="required"/>
	</div>
	</div>
	<div class="row justify-content-center align-items-center">
		<div class="col-8"><spr:hidden path="studentPass"/>
		<font color="red" ><spr:errors path="studentPass" ></spr:errors></font>
	</div>
	</div>
	<div class="row justify-content-center align-items-center">
		<div class="col-3">Semister : </div>
		<div class="col-8"><spr:input path="semister" required="required"/>	
	</div>
	</div>
	<br>
	<a href="index.jsp" style="margin:5px;font-size: 18px">Back</a>
	<input type="submit" value="Update Here">
	</spr:form>
	</div>
	</div>
	</div>
</body>
</html>
<%}else{
	response.sendRedirect("index.jsp");
}%>