<%--
  Created by IntelliJ IDEA.
  User: anjai
  Date: 9/9/17
  Time: 9:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>alert(document.cookie)</script>
</head>
<body>
<%
    String userId = null;
    Cookie[] cookies = request.getCookies();
    if(cookies != null)
    {
        for(Cookie cookie : cookies)
        {
            if(cookie.getName().equals("xl"))
            {
                userId = cookie.getValue();
            }
        }
    }

    if(userId==null)
    {
        response.sendRedirect("login.jsp");
    }
%>
<h3>xl : <%=userId%></h3>

<form method="post" action="login.jsp" name="logout">
    <input type="submit" value="logout" name="logout"/>
</form>
</body>
</html>

