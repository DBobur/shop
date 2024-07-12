<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: davla
  Date: 5/7/2023
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            padding: 20px;
        }
        h1 {
            margin-bottom: 20px;
        }
        form, a {
            margin-bottom: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table th, table td {
            border: 1px solid #dee2e6;
            padding: 8px;
            text-align: left;
        }
        table th {
            background-color: #007bff;
            color: black;
        }
        form button, a button {
            width: 100%;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>User</h1>
    <form action="/user/card" method="get">
        <input type="hidden" name="userId" value="${user.id}">
        <button class="btn btn-primary">CRUD Card</button>
    </form>
    <form action="/user/order" method="get">
        <input type="hidden" name="userId" value="${user.id}">
        <button class="btn btn-success">My Order</button>
    </form>
    <a href="/" class="btn btn-danger">Log Out</a>

    <table class="table table-striped table-bordered mt-4">
        <thead class="thead-dark">
        <tr>
            <th>Name</th>
            <th>Price</th>
            <th>R/P</th>
            <th>Create Date</th>
            <th>Method</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${products}" var="product">
            <tr>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.recurrence_period}</td>
                <td>${product.create_date}</td>
                <td>
                    <form action="/user/buy" method="get">
                        <input type="hidden" name="userId" value="${user.id}">
                        <input type="hidden" name="productId" value="${product.id}">
                        <button type="submit" class="btn btn-info">Buy</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
