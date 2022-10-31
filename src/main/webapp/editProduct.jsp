<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 10/31/2022
  Time: 10:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<form action="/edit" method="post">
  <div align="center">
    <table>
      <tr>
        <td>Nhập id</td>
        <td><input name="id" value="${p.id}" readonly></td>
      </tr>
      <tr>
        <td>Nhập name</td>
        <td><input name="name" value="${p.name}"></td>
      </tr>
      <tr>
        <td>Nhập img</td>
        <td><input name="img" value="${p.img}"></td>
      </tr>
      <tr>
        <td>Nhập price</td>
        <td><input name="price" value="${p.price}"></td>
      </tr>

    </table>
    <input type="submit" name="Submit">
  </div>
</form>
</body>
</html>
