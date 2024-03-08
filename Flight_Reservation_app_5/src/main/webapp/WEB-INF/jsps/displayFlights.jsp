<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Flights</title>
</head>
<body>

<h2>List of Flights</h2>
<table border="1">
<tr>
<th>Airlines</th>
<th>Departure City</th>
<th>Arrival City</th>
<th>Departure Time</th>
<th>Select Flight</th>
</tr>

<c:forEach items="${findFlights}" var="findFlights">

<tr>
<td>${findFlights.operatingAirlines}</td>
<td>${findFlights.departureCity}</td>
<td>${findFlights.arrivalCity}</td>
<td>${findFlights.estimatedDepartureTime}</td>
<td><a href="showCompleteReservation?flightId=${findFlights.id}">Select</a></td>
</tr>
</c:forEach>
</table>

</body>
</html> --%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Display Flights</title>
  <!-- Bootstrap CSS link -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom CSS -->
  <style>
    body {
        background: rgb(250,244,26);
background: linear-gradient(90deg, rgba(250,244,26,0.5270483193277311) 0%, rgba(182,184,186,0.37298669467787116) 50%, rgba(208,202,202,1) 100%);
      font-family: 'Arial', sans-serif;
      margin: 20px;
    }

    h2 {
      text-align: center;
      color: #007bff;
      margin-bottom: 20px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    th, td {
      border: 1px solid #dee2e6;
      padding: 12px;
      text-align: left;
    }

    th {
      background-color: #007bff;
      color: #fff;
    }

    a {
      color: #007bff;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

  <div class="container">
    <h2>List of Flights</h2>
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th>Airlines</th>
          <th>Departure City</th>
          <th>Arrival City</th>
          <th>Departure Time</th>
          <th>Select Flight</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${findFlights}" var="flight">
          <tr>
            <td>${flight.operatingAirlines}</td>
            <td>${flight.departureCity}</td>
            <td>${flight.arrivalCity}</td>
            <td>${flight.estimatedDepartureTime}</td>
            <td><a href="showCompleteReservation?flightId=${flight.id}">Select</a></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>

  <!-- Bootstrap JS and Popper.js (Optional) -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
