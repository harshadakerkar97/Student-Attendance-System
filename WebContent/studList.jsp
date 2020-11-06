<%@page import="com.cdac.dto.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% if(session.getAttribute("admin")!=null)
{ System.out.println("stud list session check"+session.getAttribute("admin")); %>
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
<body>
<div class="row">
<div class="col-10 text-center">
<h1>Student List</h1></div>
<!-- <div class="col"><a href="back_home.cdac" role="button">Back</a></div> -->
<table class="table table-bordered text-center">
  <thead>
    <tr style="background: black; color: white;">
      <th scope="col">Student Id</th>
      <th scope="col">Student name</th>
      <th scope="col">Email </th>
      <th scope="col">Contact Number</th>
      <th scope="col">Semister</th>
  	  <th scope="col">Edit</th>
  	  <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <%List<Student> list=(List<Student>)request.getAttribute("li");
	for(Student s:list){%>
    <tr>
      <th scope="row"><%=s.getStudentId() %></th>
      <td><%=s.getStudentName() %></td>
      <td><%=s.getEmail() %></td>
      <td><%=s.getContact_no() %></td>
      <td><%=s.getSemister() %></td>
      <td><a href="update_form.cdac?studentId=<%=s.getStudentId() %>">Update</a></td>
      <td><a href="delete_form.cdac?studentId=<%=s.getStudentId() %>">Remove</a></td>
    </tr>
    <%} %>
  </tbody>
</table>
</div>
</body>
</html>

<%}else{
	response.sendRedirect("index.jsp");
}%>