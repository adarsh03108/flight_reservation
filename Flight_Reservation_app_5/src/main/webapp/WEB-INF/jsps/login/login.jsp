<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>

  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
 
  <style>
    body {
      background:  url(https://cdn.pixabay.com/photo/2022/09/04/20/11/plane-7432680_1280.jpg)no-repeat center top;
    background-size: cover;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
      font-family: 'Arial', sans-serif;
      font-family: 'Arial', sans-serif;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
      margin: 0;
    }

    .login-container {
      background-color: #5bb1f83d;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background:  url(https://cdn.pixabay.com/photo/2022/09/04/20/11/plane-7432680_1280.jpg)no-repeat center top;
    background-size: cover;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
     
    }

    h2 {
      text-align: center;
      margin-bottom: 20px;
      color:yellow;
    }

    form {
      max-width: 300px;
      margin: 0 auto;
      backdrop-filter: blur(1px);
     
  
      
    }

    label {
      color: rgb(255, 255, 255);
      font-weight: bold;
      
    }

    input {
      width: 100%;
      padding: 8px;
      margin-bottom: 15px;
      border: 1px solid #0782fd;
      border-radius: 4px;
    
  
    }


    input[type="submit"] {
      
      background-color: #24242373;
      border: none;
      padding: 10px;
      border-radius: 4px;
      cursor: pointer;
      backdrop-filter:blur(none);
    }

    input[type="submit"]:hover {
      background-color: #f5d0029f;
    }

    .error-message {
      color: #dc3545;
      text-align: center;
      margin-bottom: 15px;
    }
    .form-control {
    display: block;
    width: 100%;
    height: calc(1.5em + 0.75rem + 2px);
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    background-color:rgba(0,123,255,.25);
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
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
/*rgba(0,123,255,.25)*/
  
  </style>
</head>
<body>

  <div class="login-container">
    <h2>Login Here</h2>
  
    <div class="error-message">${error}</div>
    <form action="verifyLogin" method="post">
      <div class="form-group">
        <label for="emailId">Email</label>
        <input type="text" name="emailId" class="form-control" required />
      </div>
      <div class="form-group">
        <label for="password">Password</label>
       
        <input type="password" name="password" class="form-control" required />
   
      </div>
      <input type="submit" value="Login" class="btn btn-primary" />
    </form>
    <div id="loginn">
      <a href="showLoginPage">Login</a>
      <span>|</span>
      <a href="showReg">Create New</a>
    </div>
  </div>


  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
