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

<c:forEach var="item" items="${result}">
    <div><b><a href="/board/${item.id}">${item.id} </a> </b> <br>
        title:<br> ${item.title} <br>
        content:<br> ${item.content}<br>
        username:<br> ${item.userName}<br>
    </div> <br> <br>
</c:forEach>

<form:form method="POST"
           action="/board" modelAttribute="board">
    title:<br>
    <input type="text" name="title"><br>
    content:<br>
    <input type="text" name="content"><br>
    username:<br>
    <input type="text" name="userName"><br>
    <button type="submit" >write</button>
</form:form>


<form:form method="DELETE"
           action="/board" modelAttribute="board">
    id:<br>
    <input type="text" name="id"><br>
    <button type="submit" >delete</button>
</form:form>

</body>
</html>