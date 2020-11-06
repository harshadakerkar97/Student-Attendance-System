<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="spr" uri="http://www.springframework.org/tags/form" %>
 <%if(session.getAttribute("admin")!=null){ 
    System.out.print("admin reg page "+session.getAttribute("admin"));
    %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Registration Form</title>
    <style>
    input{
    	background:transparent;
    	border-radius: 15px; 
    }
    </style>
  </head>
<body>
	<div class="container-fluid justify-content-center align-items-center" style="height:100vh;">
	<div class="row d-flex justify-content-center align-items-center" style="height:90vh;">
	<div class="col-4 justify-content-center align-items-center" style="background: #EBD4D4;
	box-shadow: -webkit-box-shadow: 31px 40px 17px 0px rgba(99,102,102,1);
-moz-box-shadow: 31px 40px 17px 0px rgba(99,102,102,1);
box-shadow: 31px 40px 17px 0px rgba(99,102,102,1);
			border-radius: 5px;
	">
	<div class="row mt-3 mb-3 d-flex justify-content-center">
	<h1>Registration Form</h1></div>
	<spr:form action="reg.cdac" method="post" commandName="student">
	<div class="row mb-2 d-flex justify-content-center align-items-center">
	
		<div class="col-4">Student Id : </div>
		<div class="col-5"><spr:input path="studentId"  required="true" /></div>
	</div>
	<div class="row mb-2 d-flex justify-content-center align-items-center">
		<div class="col-4">Student Name : </div>
		<div class="col-5"><spr:input path="studentName" required="true"/>
		</div>
	</div>
	<div class="row mb-2 justify-content-center align-items-center">
		<div class="col-4">Password : </div>
		<div class="col-5"><spr:password path="studentPass"/>
		<font color="red" ><spr:errors path="studentPass" ></spr:errors></font>
		</div>
	</div>
	<div class="row mb-2 justify-content-center align-items-center">
		<div class="col-4">Email : </div>
		<div class="col-5"><spr:input path="email" required="true" /></div>
	</div>
	<div class="row mb-2 justify-content-center align-items-center">
		<div class="col-4">Contact number : </div>
		<div class="col-5"><spr:input path="contact_no" required="true"/></div>
	</div>
	<div class="row mb-2 justify-content-center align-items-center">
		<div class="col-4">Semister : </div>
		<div class="col-5"><spr:input path="semister" required="true" /></div>
	</div>
	<br>
	<button type="submit" class="btn btn-outline-dark" style="margin-bottom: 5px;text-align: center; margin-left: 200px;">Register Here</button><br>
	</spr:form>
	
	</div>
	</div>
	</div>
</body>
</html>
<%}else{
	response.sendRedirect("index.jsp");
}%>