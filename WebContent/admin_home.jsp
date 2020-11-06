<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
    <% if(session.getAttribute("admin")!=null){ 
    System.out.print("admin home page "+session.getAttribute("admin"));
    %>

<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Welcome Page</title>
  </head>
  <style>
  body{
  	background-image:url("admin_back1.jfif");
  	background-size: cover;
  	background-position: center;
  	
  }
  .dropdown {
  margin-top:8px;
  display:inline-block;
  justify-content:center;
  align-items:center;
  }

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  padding: 12px 16px;
  z-index: 1;
}

.dropdown:hover .dropdown-content {
  display: block;
  </style>
<body>
<div class="container-fluid">
	<nav class="navbar navbar-expand-lg navbar-dark" style="font-size:18px; font-weight:bold ;height:10vh; background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(167,128,136,1) 57%, rgba(254,255,255,1) 100%);">
  <a class="navbar-brand d-flex align-items-center justify-content-center" href="#">CDAC</a>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="#">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="stud_list.cdac" style="color:white;">Student List</a>
      </li>
    </ul>
    <a class="btn btn-outline-dark" href="ad_logout.cdac" role="button">Logout</a>
  </div>
</nav>
<div class="row d-flex justify-content-center align-items-center"style="height:80vh">
	<div class="col-5 justify-content-center align-items-center text-light" style="height: 40vh;background:rgba(0,0,0,0.7); ">
	<div class="row justify-content-center mt-5 mb-3 text-light"><h1 style="font-weight: bold;">Welcome To CDAC </h1> </div>
	<div class="row mb-3" style="font-size: 25px;">
		<div class="col">Register New Student </div>
		<div class="col"><a class="btn btn-outline-light" href="reg_form.cdac" role="button">Register</a></div>
	</div>
	<spr:form action="subject_wise_attendace.cdac" method="post" commandName="student">
	<div class="row d-flex justify-content-center align-items-center">
		<div class="col">Show Subject Attendance</div>
		<div class="col"><spr:select path="subject">
			<spr:option value="java">Java</spr:option>
			<spr:option value="C++">C++</spr:option>
			<spr:option value="data structure">Data structure</spr:option>
			</spr:select>
		</div>
		<input type="date" name="date"/>
		<div class="col">
		<button type="submit" class="btn btn-outline-light btn-md">Show</button>
		</div>
	</div>
	</spr:form>

</div>
</div>
</body>
</html>
<%} else{ response.sendRedirect("index.jsp");} %>
