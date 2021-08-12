<%--
  Created by IntelliJ IDEA.
  User: iU LOVE
  Date: 8/12/2021
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/save" method="post">
    <h1>Sandwich Condiments</h1>
    <input type="checkbox" name="condiments" value="Lecture">Lecture
    <input type="checkbox" name="condiments" value="Tomato">Tomato
    <input type="checkbox" name="condiments" value="Mustard">Mustard
    <input type="checkbox" name="condiments" value="Sprouts">Sprouts
    <br>
    <br>
    <button name="save">Save</button>
</form>
<br>
<h2>Result</h2>
<p>The seasoning you choose is : </p>

<c:forEach items="${condiments}" var="sp">
    <p>${sp}</p>
</c:forEach>


</body>
</html>
