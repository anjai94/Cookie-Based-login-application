<%--
  Created by IntelliJ IDEA.
  User: anjai
  Date: 9/9/17
  Time: 9:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        if ("admin@gmail.com".equals(email) && "admin".equals(pass))
        {
            Cookie cook = new Cookie("xl", request.getParameter("email"));
            cook.setMaxAge(600);
            cook.setSecure(true);
            /*cook.setDomain("localhost");
            cook.setPath("/login-app");*/
            response.addCookie(cook);
            response.sendRedirect("home.jsp");
        }
        else
        {
%>
<script>alert("Ivalid Email or password")</script>
<%
    }
%>