<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Start Check-In</title>

  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

  <style>
    body{
      font-family: 'Arial', sans-serif;
      margin: 20px;
      background: url(https://cdn.pixabay.com/photo/2020/09/01/15/05/aircraft-cabin-5535467_960_720.jpg) no-repeat center top;
     background-size: cover;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    backdrop-filter: blur(2px);

    /*https://cdn.pixabay.com/photo/2020/03/18/14/48/clouds-4944276_1280.jpg*/
    }
    h2 {
      text-align: center;
      margin-bottom: 20px;
      color: rgb(250, 164, 5);
    }

    form {
      max-width: 400px;
      margin: 0 auto;
      background-color: #3b3b3b6c;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    label {
      font-weight: bold;
      color: #1f8bf7;
    }

    input {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #a3a4a5fb;
      border-radius: 5px;
    }

    input[type="submit"] {
      background-color:  rgba(250, 164, 5, 0.856);
      color: #f8f7f7;
      border: none;
      padding: 10px;
      border-radius: 5px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color:  rgba(250, 136, 5, 0.829);
    }
    .form-control{
      background-color: rgba(0, 0, 0, 0.315);
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Start Check-In</h2>
    <form action="proceedCheckIn" method="post">
      <div class="form-group">
        <label for="id">Enter your Reservation ID:</label>
        <input type="text" name="id" class="form-control" />
      </div>
      <input type="submit" value="Start" class="btn btn-primary" />
    </form>
  </div>


  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
