<%@page import="java.net.URI"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.IfStatement"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Register</title>
<style >
.button-8 {
  background-color: #e1ecf4;
  border-radius: 3px;
  border: 1px solid #7aa7c7;
  box-shadow: rgba(255, 255, 255, .7) 0 1px 0 0 inset;
  box-sizing: border-box;
  color: #39739d;
  cursor: pointer;
  display: inline-block;
  font-family: -apple-system,system-ui,"Segoe UI","Liberation Sans",sans-serif;
  font-size: 13px;
  font-weight: 400;
  line-height: 1.15385;
  margin: 0;
  outline: none;
  padding: 8px .8em;
  position: relative;
  text-align: center;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: baseline;
  white-space: nowrap;
}

.button-8:hover,
.button-8:focus {
  background-color: #b3d3ea;
  color: #2c5777;
}

.button-8:focus {
  box-shadow: 0 0 0 4px rgba(0, 149, 255, .15);
}

.button-8:active {
  background-color: #a0c7e4;
  box-shadow: none;
  color: #2c5777;
}

</style>
  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,700|Roboto:400,700&display=swap" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body class="sub_page">
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section" style="background-color:#f3ae48">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
          <a class="navbar-brand" href="/">
            <img src="images/logo.png" alt="" />
            <span>
             Community
            </span>
          </a>
          <div class="call_btn">
            <a href="/">
            <button class="button-8" role="button"> Back</button> 
            </a>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->


  <!-- contact section -->

  <section class="contact_section">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-4 offset-lg-2 col-md-5 offset-md-1">
          <h2 class="custom_heading">Register Here</h2>
          <h3>${ExistEmail}</h3>
          <sf:form  name="formRegister" method="post" action="register" autocomplete="on" modelAttribute="data" > 
			    <p> 
			        <label for="username" class="uname" data-icon="u">Username:</label>
			        <sf:input path="username" id="username" name="username" required="required" type="text" placeholder="Enter your username" />
			    </p>
			    <p> 
			        <label for="email" class="youmail" data-icon="e" > Email:</label>
			        <sf:input path="email" id="email" name="email" required="required" type="email" placeholder="Enter your email"/>  
			    </p>
			    <p> 
			        <label for="fName" class="youfname" data-icon="f" > First Name:</label>
			        <sf:input path="firstName" id="firstName" name="fName" required="required" type="text" placeholder="Enter your First Name"/> 
			    </p>
			    <p> 
			        <label for="lName" class="youlname" data-icon="l" > Last Name:</label>
			        <sf:input path="lastName" id="lastName" name="lName" required="required" type="text" placeholder="Enter your Last Name"/> 
			    </p>
			    <p> 
			        <label for="password" class="youpasswd" data-icon="p">Password: </label>
			        <sf:input path="password" id="password" name="password" required="required" minlength="8" type="password" placeholder="Enter your password"/>                               
			    </p>
			    <p> 
			        <label for="address" class="youaddress" data-icon="a">Address: </label>
			        <sf:input path="address" id="address" name="address" required="required" type="text" placeholder="Enter your Address"/>  
			    </p>
			    <p> 
			        <label for="contact" class="youcontact" data-icon="c">Contact:</label>
			        <sf:input path="contact" id="contact" name="contact" required="required" type="text" pattern="^[0-9]+$" title="Input number only" placeholder=" Enter your Contact Number"/>
			    </p>
			    <p class="signin button"> 
			        <button  >Register</button> 
			    </p>
			    <p class="change_link">  
			        Already a member?
			        <a href="login" class="to_register"> Login Here </a>
			    </p>
			</sf:form>
        </div>
        <div class="col-md-6 px-0">
          <div class="img-box">
            <img src="images/contact.jpg" alt="" class="w-100" style="height: 820px;" />
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end contact section -->

  

  <!-- footer section -->
  <footer class="container-fluid footer_section" style="background-color:#5F85DB">
    <p>
      &copy; 2022
      <a href="">ABC Community</a>
    </p>
  </footer>
  <!-- footer section -->

  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/circles.min.js"></script>
  <script src="js/custom.js"></script>

</body>

</html>