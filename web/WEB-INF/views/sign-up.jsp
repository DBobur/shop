<%--
  Created by IntelliJ IDEA.
  User: davla
  Date: 5/7/2023
  Time: 9:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .signup-container {
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }
        .signup-container h1 {
            margin-bottom: 20px;
        }
        .signup-container .form-group {
            margin-bottom: 15px;
        }
        .signup-container .btn {
            width: 100%;
        }
        .day-mode {
            background-color: #f8f9fa;
            color: #000;
        }
        .day-mode .signup-container {
            background: #fff;
        }
        .night-mode {
            background-color: #343a40;
            color: #fff;
        }
        .night-mode .signup-container {
            background: #444;
        }
        .night-mode .form-control {
            background: #555;
            color: #fff;
            border: 1px solid #666;
        }
        .night-mode .form-control::placeholder {
            color: #ccc;
        }
        .night-mode .btn-primary {
            background: #007bff;
            border: 1px solid #007bff;
        }
        .night-mode .btn-primary:hover {
            background: #0056b3;
        }
    </style>
</head>
<body class="day-mode">
<div class="signup-container">
    <h1 class="text-center">Sign Up</h1>
    <form action="/sign-up" method="post">
        <div class="form-group">
            <input name="name" type="text" class="form-control" placeholder="Name" required>
        </div>
        <div class="form-group">
            <input name="tel_number" type="text" class="form-control" placeholder="Tel Number" required>
        </div>
        <div class="form-group">
            <input name="password" type="password" class="form-control" placeholder="Password" required>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
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
    });
</script>
</body>
</html>
