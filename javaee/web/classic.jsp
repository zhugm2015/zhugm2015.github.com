<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/11/28
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 这是一个典型的JSP，它包含了JSP中常用的元素 -->
<%!
    String getDate() {
        return new java.util.Date().toString();
    }
    int count = 10;
%>
<html>
<head>
    <title>一个典型的JSP</title>
</head>
<body>
<%@ include file="header.jsp" %>
<div style="text-align: center;">
    <table align="center">
        <tr style="background:#777777;">
            <td>
                ----------------------------1
            </td>
        </tr>
        <%
            int i;
            //color表示颜色，通过它来动态控制颜色
            String color1 = "#99ccff";
            String color2 = "#88cc33";
            for (i = 1; i <= count; i++) {
                String color;
                if (i % 2 == 0) color = color1;
                else color = color2;
                out.println("<tr style=\"background:" + color + "\";" + "><td>-------</td></tr>");
            }
        %>
    </table>
    <hr/>
    当前的时间是：
    <%-- 下面是使用表达式的例子--%>
    <%=getDate()%>
</div>
</body>
</html>
