<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/MealCSS.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form  class="AddMealCSS">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Day</label>
      <select id="inputState" class="form-control" name="Day">
        <option selected>Choose Day</option>
        <option>Monday-Saturday</option>
        <option>Monday</option>
        <option>Tuesday</option>
        <option>Wednesday</option>
        <option>Thursday</option>
        <option>Friday</option>
        <option>Saturday</option>
        <option>Sunday</option>
      </select>
    </div>
  </div>
  <div class="form-row">
  <div class="form-group col-md-6">
      <label for="inputPassword4">Meal 1 </label>
      <input type="text" class="form-control" name="MealOne">
    </div>
  <div class="form-group col-md-6">
      <label for="inputCity">Meal 2 </label>
      <input type="text" class="form-control" name="MealTwo">
    </div>
    </div>
    <div class="form-row">
  <div class="form-group col-md-6">
      <label for="inputCity">Meal 3</label>
      <input type="text" class="form-control" name="MealThree">
    </div>
    
    <div class="form-group col-md-6">
      <label for="inputCity">Meal 4</label>
      <input type="text" class="form-control" name="MealFour">
    </div>
    </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Meal 5</label>
      <input type="text" class="form-control" name="MealFive">
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Meal 6</label>
      <input type="text" class="form-control" name="MealSix">
    </div>
    </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">WorkOut</label>
      <input type="text" class="form-control" name="Workout">
     </div> 
    </div>
    
    
    
   
    
    <button type="submit" class="btn btn-primary">Add Meal</button>
    
    
    </form>


 

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</body>
</html>