<%--
  Created by IntelliJ IDEA.
  User: davla
  Date: 5/8/2023
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Super Admin</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      background-color: #f8f9fa;
    }
    .admin-container {
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 600px;
      background: #fff;
    }
    .admin-container h1 {
      margin-bottom: 20px;
      font-weight: bold;
    }
    .admin-container h3 {
      margin-bottom: 20px;
    }
    .admin-container a {
      display: block;
      margin-top: 10px;
    }
    .admin-container a button {
      width: 100%;
    }
  </style>
</head>
<body>
<div class="admin-container">
  <h1 class="text-center">Super Admin</h1>
  <h3 class="text-center">Your balance ${user.hisob.balance} $</h3>
  <a href="/super/user-controller" class="btn btn-primary">User Controller</a>
  <a href="/super/admin-controller" class="btn btn-success">Admin Controller</a>
  <a href="/" class="btn btn-danger">Log Out</a>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
