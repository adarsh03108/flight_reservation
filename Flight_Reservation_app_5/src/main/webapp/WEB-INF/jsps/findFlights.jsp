<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Search Flights</title>
  <!-- Bootstrap CSS link -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom CSS -->
  <style>
  *{
        box-sizing: border-box;
        padding: 0px;
        margin: 0px;
    }
    body {
      background-color: #f8f9fa;
      font-family: 'Arial', sans-serif;
      margin: 50px;
      background: url(https://cdn.pixabay.com/photo/2016/11/10/08/15/aircraft-1813731_1280.jpg) no-repeat center top;
     
     /* background-size: cover;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;*/
    }

    h2 {
      text-align: center;
      color: #ffe600;
    }

    form {
      max-width: 400px;
      margin: 0 auto;
      background-color: rgba(255, 255, 255, 0.8);
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      background: url(https://cdn.pixabay.com/photo/2016/11/10/08/15/aircraft-1813731_1280.jpg) no-repeat center top;
       background-size: cover;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      backdrop-filter: blur(4px); 
    }

    label {
      font-weight: bold;
      color: #e5e9ec;
    }

    input {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ced4da;
      border-radius: 5px;
    }

    input[type="submit"] {
      background-color: #ffae00bb;
      color: #fff;
      border: none;
      padding: 10px;
      border-radius: 5px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #ff9100d7;
    }

    .form-control {
      background-color: rgba(167, 165, 165, 0.219);
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Find Flights</h2>
    <form action="findFlights" method="post">
      <div class="form-group">
        <label for="from">From:</label>
        <input type="text" name="from" class="form-control" />
      </div>
      <div class="form-group">
        <label for="to">To:</label>
        <input type="text" name="to" class="form-control" />
      </div>
      <div class="form-group">
        <label for="departureDate">Departure Date:</label>
        <input type="text" name="departureDate" class="form-control" />
      </div>
      <input type="submit" value="Search" class="btn btn-warning" />
    </form>
  </div>


  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
