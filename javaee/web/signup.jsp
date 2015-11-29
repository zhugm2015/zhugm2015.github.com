<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String[] hometown = request.getParameterValues("hometown");
    /*out.print(username + ", " + password );
    for (String s : hometown) {
        out.print("hometown");
    }*/
    if (username.equals("zhangsan") && password.equals("123"))
    {
        out.print("ok");

    }
    else
    {
        request.setAttribute("message","erro....");
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
%>