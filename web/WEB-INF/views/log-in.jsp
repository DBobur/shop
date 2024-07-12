<%--
  Created by IntelliJ IDEA.
  User: davla
  Date: 5/7/2023
  Time: 9:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Log In</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-container {
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }
        .login-container h1 {
            margin-bottom: 20px;
        }
        .login-container .form-group {
            margin-bottom: 15px;
        }
        .login-container .btn {
            width: 100%;
        }
        .alert {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h1 class="text-center">Log In</h1>
    <form action="/log-in" method="post">
        <div class="form-group">
            <input name="tel_number" type="text" class="form-control" placeholder="Tel Number" required>
        </div>
        <div class="form-group">
            <input name="password" type="password" class="form-control" placeholder="Password" required>
        </div>
        <button type="submit" class="btn btn-primary">Enter</button>
    </form>

    <c:if test="${message != null}">
        <div class="alert alert-info" role="alert">${message}</div>
    </c:if>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
