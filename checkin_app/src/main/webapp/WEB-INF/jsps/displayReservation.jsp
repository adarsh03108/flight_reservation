<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Reservation Details</title>

  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
 
  <style>
    body {
        background: url(https://cdn.pixabay.com/photo/2013/08/06/19/13/plane-170272_1280.jpg) no-repeat center top;
      background-size: cover;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      font-family: 'Arial', sans-serif;
      margin: 20px;
      backdrop-filter: blur(1px);
    }

    h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #faad07;
    }

    form {
        background-color: rgba(14, 13, 13, 0.589);
      max-width: 400px;
      margin: 0 auto;
      background-color: #2221218f;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      backdrop-filter: blur(2px);
    }

    label {
      font-weight: bold;
      color: white;
    }
    p{
        color: white;
    }

    input {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ced4da;
      border-radius: 5px;
    }

    input[type="submit"] {
      background-color: #ffd900c5;
      color: #fff;
      border: none;
      padding: 10px;
      border-radius: 5px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #b35700da;
    }
    .form-control{
        background-color: rgba(0, 0, 0, 0.527);
    }
  </style>
</head>
<body>
  <h2>Reservation Details</h2>

  <p>Passenger Name: ${reservation.getPassenger().firstName}</p>
  <p>Passenger Email: ${reservation.getPassenger().email}</p>
  <p>Passenger Phone: ${reservation.getPassenger().phone}</p>

  <p>Operating Airlines: ${reservation.getFlight().operatingAirlines}</p>
  <p>Flight Number: ${reservation.getFlight().flightNumber}</p>
  <p>Departure City: ${reservation.getFlight().departureCity}</p>
  <p>Arrival City: ${reservation.getFlight().arrivalCity}</p>
  <p>Date of Departure: ${reservation.getFlight().dateOfDeparture}</p>

  <h2>Update No. of Bags & Status</h2>
  <form action="proceedToCheckIn" method="post">
    <div class="form-group">
      <label for="id">Reservation ID:</label>
      <input type="text" name="id" value="${reservation.id}" class="form-control" readonly />
    </div>
    <div class="form-group">
      <label for="numberOfBags">Number of Bags:</label>
      <input type="text" name="numberOfBags" class="form-control" />
    </div>
    <input type="submit" value="Confirm" class="btn btn-primary" />
  </form>

  
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
