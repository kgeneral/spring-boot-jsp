<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Board</title>
</head>
<body>

<form:form method="PUT"
           action="/board" modelAttribute="board">
    <input type="text" name="id" value="${item.id}" readonly/>
    title:<br>
    <input type="text" name="title" value="${item.title}"><br>
    content:<br>
    <input type="text" name="content" value="${item.content}"><br>
    username:<br>
    <input type="text" name="userName" value="${item.userName}"><br>
    <button type="submit" >update</button>
</form:form>

<br>
<a href="/board">go back</a>


</body>
</html>