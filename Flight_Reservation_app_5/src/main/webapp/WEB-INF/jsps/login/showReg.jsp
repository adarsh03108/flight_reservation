<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>New Registration</title>
 <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>


   
 body {
      background: url(https://cdn.pixabay.com/photo/2018/09/25/17/14/airplane-3702676_1280.jpg) no-repeat center top;
      background-size: cover;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      font-family: 'Arial', sans-serif;
      margin: 50px;
    }

    h2 {
      text-align: center;
      color: #ffbb00;
    }

    form {
      max-width: 400px;
       background-color: #5bb1f83d;
      margin: 0 auto;
    
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      backdrop-filter: blur(1px);
         background: url(https://cdn.pixabay.com/photo/2018/09/25/17/14/airplane-3702676_1280.jpg) no-repeat center top;
      background-size: cover;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
    }

    label {
      font-weight: bold;
    }

    input {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #0352fd;
      border-radius: 5px;
    }

    input[type="submit"] {
      background-color: #ffbb00;
      color: #fff;
      border: none;
      padding: 10px;
      border-radius: 5px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #b39200;
    }

    .error-message {
      color: #dc3545;
    }

    #loginn {
      color: #fff;
      font-weight: bold;
      text-align: center;
      margin-top: 15px;
    }

    #loginn a {
      color: #fff;
      margin: 0 10px;
      text-decoration: none;
    }

    #loginn a:hover {
      text-decoration: underline;
    }
       .form-control {
   
   
    color: #f5f8fa;
    background-color:rgba(158, 202, 248, 0.25);
    background-clip: padding-box;
    border: 1px solid #037bf36e;
    
}


</style>
</head>
<body>
<h2>Create New Account</h2>
  <form action="saveReg" method="post">
    <div class="form-group">
      <input type="text" class="form-control" placeholder="Enter your First Name" name="firstName" required />
    </div>
    <div class="form-group">
      <input type="text" class="form-control" placeholder="Enter your Last Name" name="lastName" required />
    </div>
    <div class="form-group">
      <input type="text" class="form-control" placeholder="Enter your Email" name="email" required />
    </div>
    <div class="form-group">
      <input type="password" class="form-control" placeholder="Enter your Password" name="password" required />
    </div>
    <input type="submit" class="btn btn-primary" value="Save" />
    <div id="loginn">
        <a href="showLoginPage">Login</a>
        <span>|</span>
        <a href="showReg">Create New</a>
      </div>
  </form>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>