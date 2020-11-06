<%@page import="com.cdac.dto.Attendance"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <% if(session.getAttribute("admin")!=null){System.out.println("subject attendance page"); int i=0; %>  
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Student List</title>
  </head>
  <style>
  body{
  	background:white ;
  }
  </style>
<body>
	<h1 style="text-align: center;">Student List </h1>
	<div class="row">
	<div class="col"><h4>Subject : <%=request.getAttribute("subject") %></h4></div>
	<div class="col"><h4>Date : <%= request.getAttribute("date") %></h4></div>
	</div>
	<br>
	<table class="table table-bordered text-center">
  <thead>
    <tr style="background:black; color:white;border:1px solid black;">
      <th scope="col">Sr No</th>
      <th scope="col">Student Id</th>
     <!--  <th scope="col">Student Name</th> -->
  	  <th scope="col">Attendance</th>
    </tr>
  </thead>
  <tbody>
 
	 <%List<Attendance> li=(List<Attendance>)request.getAttribute("list"); 
	for(Attendance a: li){ i=i+1;%>
    <tr>
      <th scope="row"><%=i %></th>
      <td><%=a.getStudentId() %></td>
      <%-- <td><%=a.getStudentName() %></td> --%>
      <td><%=a.getAction()%></td>     
    </tr>
    <%} %>
  </tbody>
</table>
</body>
</html>

<%}
 else{
	response.sendRedirect("index.jsp");
 }
%>