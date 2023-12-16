<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login Result</title>
</head>
<body>

<h2>Login Result</h2>

<c:choose>
  <c:when test="${not empty login}">
    <p>Login successful. Welcome, ${login.username}!</p>
    <a href="${pageContext.request.contextPath}/board/list">Go to Board List</a>
  </c:when>
  <c:otherwise>
    <p>Login failed. Please check your username and password.</p>
    <a href="${pageContext.request.contextPath}/login/login">Go back to Login</a>
  </c:otherwise>
</c:choose>

</body>
</html>
