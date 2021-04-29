<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<htmllang="en" dir="ltr">
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="CSS/Style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <title></title>
</head>
<body>
<input type="checkbox" id="check">
<label for="check">
      <i class="fas fa-bars" id="btn"></i>
      <i class="fas fa-times" id="cancel"></i>
    </label>
<div class="sidebar">
      <header>My Menu</header>
      <a href="AdminDashboard.jsp">
        <i class="fas fa-qrcode"></i>
        <span>User Details</span>
      </a>
      <a href="TrainerAdmin.jsp">
        <i class="fas fa-link"></i>
        <span>Membership Management</span>
      </a>
      <a href="#">
        <i class="fas fa-stream"></i>
        <span>Member Management </span>
      </a>
      <a href="#">
         <i class="fas fa-calendar"></i>
        <span>Payments Request </span>
      </a>
      <a href="#">
        <i class="far fa-question-circle"></i>
        <span>Trainer Details</span>
      </a>
      <a href="#">
        <i class="fas fa-sliders-h"></i>
        <span>Notices</span>
      </a>
      <a href="#">
        <i class="far fa-envelope"></i>
        <span>Contact</span>
      </a>
    </div>


</body>
</html>