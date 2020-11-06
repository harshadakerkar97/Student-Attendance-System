<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Itim&family=Recursive:wght@600&display=swap" rel="stylesheet">
    <title>Index</title>
  </head>
  <style>
  body{
  	background-color: activeborder;
  	background-image: url("back.jpg");
  	background-size: cover;
  	background-repeat: no-repeat;
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
 
 }
  </style>
<body>
<div class="container-fluid">
<nav class="navbar navbar-expand-lg navbar-dark text-light" style="height:10vh; background:rgba(0,0,0,0.5);">
  <a class="navbar-brand" href="#">
  <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
width="36" height="36"
viewBox="0 0 172 172"
style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#ffffff"><path d="M85.07617,9.57422l-74.32617,52.1333v99.54248h150.5v-99.58447zM85.13916,22.67578l65.36084,44.65869v83.16553h-129v-83.20752zM86,58.15918l-53.98096,33.74072l5.60596,2.81348v39.66162h10.75v-34.30761l5.375,2.6875v13.4375l2.96045,1.49072c0,0 11.96778,5.9419 29.28955,5.9419c17.32178,0 29.28955,-5.9419 29.28955,-5.9419l2.96045,-1.49072v-13.4375l21.73096,-10.85498l-8.12549,-5.08105zM86,70.84082l32.01904,20.00928l-10.51904,5.27002v13.03857c-3.14941,1.28076 -9.91016,3.71631 -21.5,3.71631c-11.58984,0 -18.35058,-2.43555 -21.5,-3.71631v-13.03857l-10.51904,-5.27002z"></path></g></g></svg>
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active justify-content-center align-items-center">
        <a class="nav-link " href="#">
        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
width="20" height="20"
viewBox="0 0 172 172"
style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#ffffff"><path d="M86,13.94141l-3.86328,3.69531l-69.875,69.875l7.72656,7.72656l6.88672,-6.88672v62.14844h48.375v-53.75h21.5v53.75h48.375v-62.14844l6.88672,6.88672l7.72656,-7.72656l-69.875,-69.875zM86,29.22656l48.375,48.375v62.14844h-26.875v-53.75h-43v53.75h-26.875v-62.14844z"></path></g></g></svg>
        Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item pr-1">
        <a class="nav-link text-light" href="#">
        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
width="18" height="18"
viewBox="0 0 172 172"
style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#ffffff"><path d="M86,17.2c-37.92928,0 -68.8,30.87072 -68.8,68.8c0,37.92928 30.87072,68.8 68.8,68.8c37.92928,0 68.8,-30.87072 68.8,-68.8c0,-37.92928 -30.87072,-68.8 -68.8,-68.8zM86,28.66667c31.73223,0 57.33333,25.6011 57.33333,57.33333c0,31.73223 -25.6011,57.33333 -57.33333,57.33333c-31.73223,0 -57.33333,-25.6011 -57.33333,-57.33333c0,-31.73223 25.6011,-57.33333 57.33333,-57.33333zM79.04609,51.6l1.15339,45.86667h11.60104l1.15339,-45.86667zM86.02239,107.84714c-4.75293,0 -7.59218,2.53566 -7.59218,6.86432c0,4.24841 2.84498,6.77474 7.59218,6.77474c4.7128,0 7.5362,-2.52634 7.5362,-6.77474c0,-4.32866 -2.8234,-6.86432 -7.5362,-6.86432z"></path></g></g></svg>
        About Us</a>
      </li>
      <li class="nav-item dropdown">    
		  <span>
		  <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
width="19" height="19"
viewBox="0 0 172 172"
style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#ffffff"><path d="M66.29167,21.5c-10.82086,0 -19.70833,8.88748 -19.70833,19.70833v21.5c-0.02741,1.93842 0.99102,3.74144 2.66532,4.71865c1.6743,0.97721 3.74507,0.97721 5.41937,0c1.6743,-0.97721 2.69273,-2.78023 2.66532,-4.71865v-21.5c0,-5.01031 3.94802,-8.95833 8.95833,-8.95833h64.5c5.01031,0 8.95833,3.94802 8.95833,8.95833v89.58333c0,5.01031 -3.94802,8.95833 -8.95833,8.95833h-64.5c-5.01031,0 -8.95833,-3.94802 -8.95833,-8.95833v-21.43001c0.02741,-1.93842 -0.99102,-3.74144 -2.66532,-4.71865c-1.6743,-0.97721 -3.74507,-0.97721 -5.41937,0c-1.6743,0.97721 -2.69273,2.78023 -2.66532,4.71865v21.43001c0,10.82086 8.88748,19.70833 19.70833,19.70833h64.5c10.82086,0 19.70833,-8.88748 19.70833,-19.70833v-89.58333c0,-10.82086 -8.88748,-19.70833 -19.70833,-19.70833zM87.73568,59.139c-2.18814,0.00053 -4.1576,1.32735 -4.98006,3.35504c-0.82245,2.0277 -0.33375,4.35156 1.23575,5.87624l12.31771,12.31771l-69.42708,-0.06299c-1.93831,-0.02982 -3.74253,0.98629 -4.72184,2.65927c-0.97932,1.67298 -0.98201,3.74365 -0.00706,5.41918c0.97496,1.67552 2.77653,2.69633 4.7149,2.67156l69.45508,0.06299l-12.3317,12.3317c-1.40412,1.34815 -1.96971,3.35005 -1.47866,5.23364c0.49105,1.88359 1.96202,3.35456 3.84561,3.84561c1.88359,0.49105 3.88549,-0.07455 5.23364,-1.47866l21.5,-21.5c2.09823,-2.0991 2.09823,-5.50149 0,-7.60059l-21.5,-21.5c-1.01222,-1.0424 -2.4033,-1.63064 -3.85628,-1.6307z"></path></g></g></svg>
		  Sign In</span>
		  <div class="dropdown-content">
		  <p><a href="admin_login_form.cdac">Admin</a></p>
		  <p><a href="login_form.cdac">Student</a></p>
		</div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<div class="row d-flex align-items-center justify-content-center" style="height:80vh;">
<div class="col-5 text-light d-flex justify-content-center" style="background:rgba(0,0,0,0.5);box-shadow: 10px 10px 5px #734046;">
	<h1 style="font-family: 'Itim', cursive;
font-family: 'Recursive', sans-serif;">Welcome to CDAC Portal!!!!</h1>
</div>
</div>

</div>

</body>
</html>