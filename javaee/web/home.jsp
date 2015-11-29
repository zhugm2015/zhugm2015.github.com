<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/11/29
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>home page</title>
</head>
<body>
welcome <%=session.getAttribute("username")%>!<br/>
session id <%=session.getId()%>
<a href="test.jsp">test page</a>
</body>
</html>
