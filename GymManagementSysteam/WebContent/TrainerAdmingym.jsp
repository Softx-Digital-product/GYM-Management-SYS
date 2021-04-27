<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file ="SideBar.jsp" %>
    <%@ taglib prefix ="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix ="fun" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TrainerAdmin</title>

<link rel="stylesheet" href="CSS/Style1.css">
<link rel="stylesheet" href="CSS/Style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
   

</head>
<body style="background-color: #100e17;">

    <form style="margin-left:18%; margin-right:10%; z-index:4; ">
<div>
<br><br><br>

        <button type="button" class="btn btn-secondary">Add Trainer</button>
    </div>
    <div>
        <sql:setDataSource var ="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/gymtrainer" user="root" password="" />
<sql:query var="rs" dataSource="${db}">
select* from adgymtrainer
</sql:query>


        

    <table class="table" style="border:4px solid white; margin-right:20%; color:white; font-size:20px;font-family: 'Open Sans', sans-serif;">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">First Name </th>
            <th scope="col">Last Name</th>
            <th scope="col">EmailID</th>
            <th scope="col">Salary</th>
            <th scope="col">Update</th>
            

          </tr>
        </thead>
        <tbody>
          
          <c:forEach items="${rs.rows}" var="ad">
<br>

  <tr>
            <th scope="row">.</th>
            <td>${ad.FName}</td>
            <td>${ad.LName }</td>
            <td>${ad.Email }</td>
            <td>${ad.Salary }</td>
            <td><button type="button" class="btn btn-secondary">update</button></td>
          </tr>
</c:forEach>
        </tbody>
      </table>
    </div>

    <form action="TrainerDataSave" method="post" style="z-index:2; margin-right:40%;">

        <h1>Add Employee</h1>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="floatingInput" name="FName" placeholder="name@example.com">
            <label for="floatingInput">First Name </label>
            </div>
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" name="LName" placeholder="name@example.com">
                <label for="floatingInput">Last Name</label>
                </div>
          <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInput" name="EmailID" placeholder="name@example.com">
            <label for="floatingInput">EmailID</label>
            </div>
            <div class="form-floating mb-3">
                <input type="password" class="form-control" id="floatingInput" name="Pass" placeholder="name@example.com">
                <label for="floatingInput">Password</label>
                </div>
                 <div class="form-floating mb-3">
                    <input type="int" class="form-control" id="floatingInput" name="Sal" placeholder="name@example.com">
                    <label for="floatingInput">Salary</label>
                    </div>
                    <button type="submit"  class="btn btn-secondary">Add Trainer</button>
                    
                    


    </form>
    </form>
    


</body>
</html>