<%-- 
    Document   : admin
    Created on : 27 Aug, 2019, 7:34:01 PM
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
        <form name="frm" method="post">
        <div id="bg">
	       
	              <div id="header">
	                    <h1> LIBRARY MANAGEMENT SYSTEM</h1>
	              </div>
                        <div id="nav">
                                   
                                       <a href="index2.jsp">HOME</a> 
                                       <a href="db.jsp">ALL BOOK</a>
                                       <a href="status.jsp">STATUS</a>
                                       <a href="lender.jsp">BORROW</a>
                                       <a href="addbook.jsp">ADDBOOK</a> 
                                       <a href="index.jsp">LOGOUT</a>
                        </div>
	                <div id="content">
                                 <div id="frm">
                                 </div>
                         </div>   
             </form>                   
 </body>
</html>
