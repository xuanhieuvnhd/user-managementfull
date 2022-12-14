<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản lý tài khoản</title>
</head>
<body>
<a href="/users" >Danh sách tài khoản</a>
<h5><a href="/users?action=create">Tạo tài khoản mới</a></h5>
<h5><a href="/users?action=sort"> Sắp xếp tài khoản theo tên</a></h5>
<form action="/users?action=search" method="post">
    <input type="text" name="input" placeholder="Nhập tên quốc gia ">

    <button type="submit" >Tìm</button>
</form>
<h4>
    <div>
        <table style="width: 100%" border="1" cellpadding="5">
            <caption><h2>Danh sách tài khoản</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td><c:out value="${user.id}"/></td>
                    <td><c:out value="${user.name}"/></td>
                    <td><c:out value="${user.email}"/></td>
                    <td><c:out value="${user.country}"/></td>
                    <td>
                        <a href="/users?action=edit&id=${user.id}">Edit</a>
                        <a href="/users?action=delete&id=${user.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</h4>
</body>
</html>
