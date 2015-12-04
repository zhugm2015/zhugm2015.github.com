<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/11/29
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SIGN UP</title>
</head>
<body>
<h1>SIGN UP</h1>
<form action="signup.jsp" method="post">
  username: <input type="text" name="username"/> <br/>
  password: <input type="password" name="password"/><br/>
  hometown:<select name="hometown" multiple="multiple">
    <option value="Beijing">Beijing</option>
    <option value="shanghai">shanghai</option>
    <option value="shenzhen">shenzhen</option>
  </select><br/>
  <input type="submit" name="SIGN UP"/>
</form>
<%--${requestScope.message}--%>
<%
  String message= (String) request.getAttribute("message");
  if(message != null)
  {
    out.print(message);
  }
%>
</body>
</html>
