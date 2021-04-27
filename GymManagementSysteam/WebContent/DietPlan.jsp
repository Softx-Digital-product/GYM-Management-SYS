<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Diet List</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

</head>

<body class="bg-light" style="margin-top: 3%;
    margin-left: 20%;
    margin-right: 20%;">
    <% 
   
    
    
    
    %>
    
<section class="bg-secondary sticky-top text-white p-3 ">
<p style="font-size: 48px; font:bold;"> Weekly Meal</p>	
<div  class="sticky-top"style="margin-top:1%;">
    <a class="nav-link active" href="AddMeal.jsp"><button type="Submit" class="btn btn-success">Add Meal</button></a>
    
    
    </div>
</section>


<hr class="bg-light">
<table class="table table-bordered table-light">
  <thead class="m-5">
    <tr>
      <th class="p-4 bg-secondary text-white" scope="col">Days</th>
      <th class="p-4 bg-secondary text-white" scope="col">Meal 1</th>
      <th class="p-4 bg-secondary text-white" scope="col">Meal 2</th>
      <th class="p-4 bg-secondary text-white" scope="col">Meal 3</th>
      <th class="p-4 bg-secondary text-white" scope="col">Meal 4</th>
      <th class="p-4 bg-secondary text-white" scope="col">Meal 5</th>
      <th class="p-4 bg-secondary text-white" scope="col">Meal 6</th>
      <th class="p-4 bg-secondary text-white" scope="col">Workout</th>
    </tr>
  </thead>
  <tbody> 
    <tr class="bg-dark text-white">
      <th scope="row" class="p-4 bg-secondary text-white">Monday</th>
      <td>8AM</td>
      <td>11AM</td>
      <td>1PM</td>
      <td>5PM</td>
      <td>8PM</td>
      <td>10PM</td>
      <td>5PM</td>
      
    </tr>
    <tr class="bg-dark text-white">
      <th scope="row" class="p-4 bg-secondary text-white">Breakfast <br>(7 AM)</th>
      <td>Bread <br>Omelette</td>
      <td>Oats/ <br> Oatmeal</td>
      <td>Utappam</td>
       <td>Oats Dosa</td>
      <td>Wheat Upma</td>
      <td>Chapati</td>
      <td>Nuddles/ <br>Oats Masala</td>
    </tr>
    <tr class="bg-dark text-white">
      <th scope="row" class="p-4 bg-secondary text-white">Morning <br>(9 AM)</th>
      <td>2 Biscuits</td>
      <td>Fruit</td>
      <td>Dates</td>
      <td>Fruit</td>
      <td>Curd</td>
      <td>Handfull <br>of Peanuts</td>
      <td>Dates</td>
    </tr>
    <tr class="bg-dark text-white">
      <th rowspan="2" class="p-4 bg-secondary text-white">Lunch <br>(1 PM)</th>
      <td>Veg Pulao +<br>Raita</td>
      <td>Rice + <br>Egg Currey</td>
      <td>Rice + <br>Carrot Currey</td>
      <td>Rice + Bhenda <br>Kaya Pulusu</td>
      <td>Rice + <br>Egg Pulusu</td>
      <td>Rice + <br>Capsicu Curry</td>
      <td>Rice + <br>Soya Curry</td>
      
    </tr>
    <tr class="bg-dark text-white">
   	  <td>Full Meal</td>
   	  <td>Sambhar</td>
      <td>Dondakai</td>
      <td>Bhendakai</td>
      <td>Egg Plant <br>Currey</td>
      <td>Dosakai Rayyalu</td>
      <td>Chikkudukaya</td>
     
    </tr>
    <tr class="bg-dark text-white">
    <th scope="row" class="p-4 bg-secondary text-white">Evening Snacks <br>(5 PM)</th>
   	  <td>Fruit/ <br>Green Tea</td>
   	  <td>Fruit/ <br>Green Tea</td>
   	  <td>Fruit/ <br>Green Tea</td>
   	  <td>Fruit/ <br>Green Tea</td>
   	  <td>Fruit/ <br>Green Tea</td>
   	  <td>Fruit/ <br>Green Tea</td>
   	  <td>Fruit/ <br>Green Tea</td>
     
    </tr>
    <tr class="bg-dark text-white">
      <th scope="row" class="p-4 bg-secondary text-white">Dinner <br>(7 PM)</th>
      <td>2 Roti + <br>Raita</td>
      <td>2 Roti + <br>Tomato Pappu</td>
      <td>2 Roti + <br>	Potato Carot Masala</td>
       <td>2 Roti + <br>Soya / Capsicum</td>
      <td>2 Roti + <br> Onion Curry</td>
      <td>2 Roti + <br>Dosakai Pappu</td>
      <td>2 Roti + <br>Thotakura Pappu</td>

    </tr>
    <tr class="bg-dark text-white">
      <th scope="row" class="p-4 bg-secondary text-white">Bed Time (9 PM)</th>
      <td>Milk</td>
      <td>Milk</td>
      <td>Milk</td>
      <td>Milk</td>
      <td>Milk</td>
      <td>Milk</td>
      <td>Milk</td>
    </tr>
  </tbody>
</table>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</body>
</html>