<%--
  Created by IntelliJ IDEA.
  User: iU LOVE
  Date: 8/12/2021
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/tinh" method="post">
    <h1>Calculator</h1>
    <hr>
    <input type="text" name="giatri1" placeholder="Enter a number">
    <input type="text" name="giatri2" placeholder="Enter a number">
    <br>
    <br>
    <button name="action" value="cong">Addition(+)</button>
    <button name="action" value="tru">Subtraction(-)</button>
    <button name="action" value="nhan">Multiplication(X)</button>
    <button name="action" value="chia">Division(/)</button>
</form>
<hr>
<h2>Result Division: ${ketqua}</h2>
</body>
</html>
