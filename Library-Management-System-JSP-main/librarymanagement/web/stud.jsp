<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : ret
    Created on : 27 Aug, 2019, 4:36:13 PM
    Author     : dhara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title> libmag</title>   
            <meta name="viewport" content="width=device-width,initial-scale=1">
            <link rel="stylesheet" type="text/css" href="lib2.css">
          
  
    </head>
    <body>
        <form  name="frm" method="post" action="checkstud.jsp">
        <div id="bg">
	       
	              <div id="header">
	                    <h1> LIBRARY MANAGEMENT SYSTEM</h1>
	              </div>
                        <div id="nav">
                                   
                                                 <a href="index.jsp">HOME</a>
                                                 
                                                
                        </div>
	                <div id="content">
                                 <div id="frm">
                                
                                   <table align="center" cellspacing="10" cellpadding="5">
                                        <tr>
                                            <td colspan="4" align="center">RETURN</td>
                                        </tr>
                                        <tr>
                                                <td>ROLL NO</td>
                                                <td><input type="text" name="rollno"></td>
                                        </tr>
                                             <td colspan="4" align="center">
                                          <input type="submit" value="check" onclick="window.location.href='checkstud.jsp'" />
                                                 </tr>

                                     

                                        </table>
                      </div>
                          
        </div>
            </form>
    </body>
</html>
