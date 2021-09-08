<%-- 
    Document   : logout
    Created on : 27 Aug, 2019, 10:29:52 PM
    Author     : dhara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>libmag</title>
    </head>
    <body>
       

        <%

        session.removeAttribute("username");
        session.removeAttribute("password");
        session.invalidate();
        response.sendRedirect("index.jsp");
        %>
        
        
    </body>
</html>



    </body>
</html>
