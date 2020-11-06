<%@page import="com.cdac.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    if(session.getAttribute("student")!=null){
    Student s=(Student)session.getAttribute("student");
    System.out.println("session : "+s);%>
  <%@taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Home</title>
    <style>
    body{
    	background-image:url("student_back.jfif");
  	background-size: cover;
  	background-position: top;
    }
    
    </style>   
  </head>
<body>
<div class="container-fluid">
	<nav class="navbar navbar-expand-lg navbar-dark" style="font-size:18px; font-weight:bold ;height:10vh; background:rgba(0,0,0,0.7);">
  <a class="navbar-brand d-flex align-items-center justify-content-center" href="#">CDAC</a>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="#">About Us</a>
      </li>
    </ul>
    <a class="btn btn-outline-light" href="profile.cdac?studentId=<%=s.getStudentId() %>" role="button">Profile</a>  &nbsp;
    <!-- do for profile -->
    <a class="btn btn-outline-light" href="ad_logout.cdac" role="button">Logout</a>
  </div>
</nav>
<div class="row d-flex justify-content-center align-items-center"style="height:80vh">
	<div class="col-5 justify-content-center align-items-center text-light" style="height: 40vh;background:rgba(0,0,0,0.7); ">
	<div class="row justify-content-center mt-5 mb-3 text-light">
	<h1 style="font-weight: bold;">Welcome <%=s.getStudentName() %>!!!</h1> </div>
	<div class="row ml-2 mb-2 align-items-center" style="font-size: 25px;">
		<div class="col-5">Subject Register</div>
		<div class="col-3 ml-3">&nbsp; <a role="button" href="student_reg.cdac?studentId=<%=s.getStudentId()%>" style="color: white; border:activeborder;">Register</a></div>
	</div>
	<spr:form action="login_session.cdac" method="post" commandName="student">
	<div class="row mb-2 justify-content-center align-items-center">
		<spr:hidden path="studentId"/>
		<div class="col-5"style="font-size: 25px;">Login For session</div>
		<div class="col-3"><spr:select path="subject">
		<spr:option value="java">Java</spr:option>
		<spr:option value="c++">C++</spr:option>
		<spr:option value="data structure">Data structure</spr:option>
		</spr:select></div>
		<div class="col-3"><input type="submit" value="session login"/></div>
	</div>
	</spr:form>
</div>
</div>
</div>
</body>
</html>

<%}else{
	response.sendRedirect("index.jsp");
}%>