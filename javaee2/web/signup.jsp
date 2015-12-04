<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/11/29
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>sign up page</title>
</head>
<body>
<h1>sign up page</h1>
<form action="user" method="post">
  <input type="hidden" name="action" value="signup">
  username: <input name="username" value="zhangsan"><br/>
  password: <input type="password" name="password" value="123"><br/>
  <input type="submit" value="SIGN UP"/>
</form>
<%
  String message = (String) request.getAttribute("message");
  if (message != null) {
    out.print(message);
  }
%>
<%=session.getId()%>
</body>
</html>
