<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Shop</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            margin-top: 20px;
        }
        .day-mode {
            background-color: #f8f9fa;
            color: #000;
        }
        .night-mode {
            background-color: #343a40;
            color: #fff;
        }
        .night-mode .card {
            background-color: #444;
            color: #fff;
        }
        .night-mode .alert-info {
            background-color: #555;
            color: #fff;
        }
        .night-mode .btn-primary, .night-mode .btn-success {
            color: #fff;
        }
    </style>
</head>
<body class="day-mode">
<!-- Main content -->
<div class="container mt-5">
    <div class="text-right">
        <button id="modeToggle" class="btn btn-secondary mb-4">Night Mode</button>
    </div>
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <div class="card">
                <div class="card-body text-center">
                    <h1 class="card-title">Welcome to Shop</h1>
                    <p class="card-text">Your one-stop solution for all your needs.</p>
                    <a href="${pageContext.request.contextPath}/log-in" class="btn btn-primary mr-2">Log In</a>
                    <a href="${pageContext.request.contextPath}/sign-up" class="btn btn-success">Sign Up</a>
                </div>
            </div>
            <div class="mt-4">
                <c:if test="${message != null}">
                    <div class="alert alert-info" role="alert">${message}</div>
                </c:if>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    document.getElementById('modeToggle').addEventListener('click', function() {
        const body = document.body;
        if (body.classList.contains('day-mode')) {
            body.classList.remove('day-mode');
            body.classList.add('night-mode');
            this.textContent = 'Day Mode';
        } else {
            body.classList.remove('night-mode');
            body.classList.add('day-mode');
            this.textContent = 'Night Mode';
        }
    });
</script>
</body>
</html>
