<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/11/29
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>index page</title>
</head>
<body>
<h1>index page</h1>
welcome <%=session.getAttribute("username")%>!<br/>
session id <%=session.getId()%>
<a href="user?action=logout">log out</a>
</body>
</html>
