<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 10/31/2022
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/create" method="get">
    <div align="center">
        <table>
            <tr>
                <td>Nhập id</td>
                <td><input name="id" placeholder="nhập id"></td>
            </tr>
            <tr>
                <td>Nhập name</td>
                <td><input name="name" placeholder="nhập name"></td>
            </tr>
            <tr>
                <td>Nhập img</td>
                <td><input name="img" placeholder="nhập img"></td>
            </tr>
            <tr>
                <td>Nhập price</td>
                <td><input name="price" placeholder="nhập price"></td>
            </tr>
        </table>
        <input type="submit" name="Submit">
    </div>
</form>
</body>
</html>
