<%@page import="com.cdac.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="spr" uri="http://www.springframework.org/tags/form" %>
 <% if(session.getAttribute("student")!=null){
    Student s=(Student)session.getAttribute("student");
    System.out.println("session : "+s);%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Profile</title>
</head>
<body>
<div classs="container align-items-center" style="height: 100vh;">	
	<div class="bg-light d-flex align-items-center justify-content-center" style="height:100vh">
    <div class="row d-flex justify-content-center align-items-center">
        <div class="col-12 col-md-6 d-flex"
            style="height: 60vh; width: 50%; border-radius: 5%; background-color: rgba(243, 229, 36, 0.445);">
            <div class="container justify-content-center">
                <div class="row justify-content-center" style="font-size:30px">
                </div>
                <div class="row justify-content-center" style="margin-bottom: 5vh;">
                    <img src="user.png"
                        alt="Avatar" style="width:30%; border-radius: 50%;">
                </div>
				<h4 style="margin-top: 4px;">Profile</h4>
                <div class="row" style="height:8vh;font-size:20px">
                    <div class="col-4 border d-flex align-items-center justify-content-center">Student Id</div>
                    <div class="col-8"><%=s.getStudentId() %></div>
                    <div class="col-4 border d-flex align-items-center justify-content-center">Student Name</div>
                    <div class="col-8"><%=s.getStudentName() %></div>
                    <div class="col-4 border d-flex align-items-center justify-content-center">Email</div>
                    <div class="col-8"><%=s.getEmail() %></div>
                    <div class="col-4 border d-flex align-items-center justify-content-center">Contact no</div>
                    <div class="col-8"><%=s.getContact_no() %></div>
                    <div class="col-4"><a href="forgot_pass.cdac?studentId=<%=s.getStudentId()%>">forgot pass?</a></div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>



</body>
</html>
<%}else{
	response.sendRedirect("index.jsp");
}%>