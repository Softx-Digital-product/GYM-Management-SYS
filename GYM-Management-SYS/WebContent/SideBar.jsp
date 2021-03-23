<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<htmllang="en" dir="ltr">
<head>

<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="CSS/Style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
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
        <span>Dashboard</span>
      </a>
      <a href="TrainerAdmin.jsp">
        <i class="fas fa-link"></i>
        <span>Shortcuts</span>
      </a>
      <a href="#">
        <i class="fas fa-stream"></i>
        <span>Overview</span>
      </a>
      <a href="#">
         <i class="fas fa-calendar"></i>
        <span>Events</span>
      </a>
      <a href="#">
        <i class="far fa-question-circle"></i>
        <span>About</span>
      </a>
      <a href="#">
        <i class="fas fa-sliders-h"></i>
        <span>Services</span>
      </a>
      <a href="#">
        <i class="far fa-envelope"></i>
        <span>Contact</span>
      </a>
    </div>


</body>
</html>