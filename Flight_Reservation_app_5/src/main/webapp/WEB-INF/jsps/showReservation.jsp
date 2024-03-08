<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
</head>
<body>
<h2>Flight Details</h2>

Flight Number: ${flight.flightNumber}<br/> 
Operating Airlines: ${flight.operatingAirlines}<br/>
Departure City: ${flight.departureCity}<br/>
Arrival City: ${flight.arrivalCity}<br/>
Date Of Departure ${flight.dateOfDeparture}<br/> 


<h2>Enter Passenger Details</h2>
<form action="confirmReservation" method="post">
<pre>
first name<input type="text" name="firstName"/>
last name<input type="text" name="lastName"/>
middle name<input type="text" name="middleName"/>
email<input type="text" name="email"/>
phone<input type="text" name="phone"/>
<input type="hidden" name="flightId" value="${flight.id}"/>

<h2>Enter The Payments Details</h2>
Name On The Card<input type="text" name="cardHolderName"/>
Card Number<input type="text" name="cardNumber"/>
Cvv<input type="text" name="cvvCode"/>
Expiry Date<input type="text" name="expirationDate"/>
<input type="submit" value="Complete Reservation"/>
</pre>
</form>
</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Reservation Details</title>
  <!-- Bootstrap CSS link -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom CSS -->
  <style>
    body {
      background: url(https://cdn.pixabay.com/photo/2022/02/14/12/10/plane-7013022_1280.jpg) no-repeat center top;
      background-size: cover;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
    
      font-family: 'Arial', sans-serif;
      margin: 20px;
    }

    h2 {
      color: #007bff;
      margin-bottom: 20px;
    }

    form {
      max-width: 600px;
      margin: 0 auto;
   background-color: rgba(14, 13, 13, 0.589);
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      margin-top: 20px;
      /* background: url(https://cdn.pixabay.com/photo/2018/10/31/15/43/travel-3786134_1280.jpg) no-repeat center top;
      background-size: cover;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      backdrop-filter: blur(4px); */
      backdrop-filter: blur(2px);
    }

    label {
      font-weight: bold;
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
      background-color: #ffbb00bb;
      color: #fff;
      border: none;
      padding: 10px;
      border-radius: 5px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #b35700cc;
    }
    p{
      color: white;
    }
    .form-control{
      background-color: rgba(0, 0, 0, 0.473);
    }
  </style>
</head>
<body>

  <div class="container">
    <h2>Flight Details</h2>

    <p>Flight Number: ${flight.flightNumber}</p>
    <p>Operating Airlines: ${flight.operatingAirlines}</p>
    <p>Departure City: ${flight.departureCity}</p>
    <p>Arrival City: ${flight.arrivalCity}</p>
    <p>Date Of Departure: ${flight.dateOfDeparture}</p>
    
    

    <h2>Enter Passenger Details</h2>
    <form action="confirmReservation" method="post">
      <div class="form-group">
        <label for="firstName">First Name</label>
        <input type="text" name="firstName" class="form-control" required />
      </div>
      <div class="form-group">
        <label for="lastName">Last Name</label>
        <input type="text" name="lastName" class="form-control" required />
      </div>
      <div class="form-group">
        <label for="middleName">Middle Name</label>
        <input type="text" name="middleName" class="form-control" />
      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <input type="text" name="email" class="form-control" required />
      </div>
      <div class="form-group">
        <label for="phone">Phone</label>
        <input type="text" name="phone" class="form-control" required />
      </div>
      <input type="hidden" name="flightId" value="${flight.id}" />

      <h2>Enter The Payments Details</h2>
      <div class="form-group">
        <label for="cardHolderName">Name On The Card</label>
        <input type="text" name="cardHolderName" class="form-control" required />
      </div>
      <div class="form-group">
        <label for="cardNumber">Card Number</label>
        <input type="text" name="cardNumber" class="form-control" required />
      </div>
      <div class="form-group">
        <label for="cvvCode">Cvv</label>
        <input type="text" name="cvvCode" class="form-control" required />
      </div>
      <div class="form-group">
        <label for="expirationDate">Expiry Date</label>
        <input type="text" name="expirationDate" class="form-control" required />
      </div>
      <input type="submit" value="Complete Reservation" class="btn btn-primary" />
    </form>
  </div>

  <!-- Bootstrap JS and Popper.js (Optional) -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
