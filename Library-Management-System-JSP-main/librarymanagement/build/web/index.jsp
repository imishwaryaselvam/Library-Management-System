<%-- 
    Document   : index
    Created on : 19 Aug, 2019, 7:50:18 PM
    Author     : dhara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*" %>


<!DOCTYPE html>
<html>
	<head>
          <title> libmag</title>   
            <meta name="viewport" content="width=device-width,initial-scale=1">
            <link rel="stylesheet" type="text/css" href="lib2.css">
           
            </head>
	<body>
                <div id="bg">
	       
	              <div id="header">
	                    <h1> LIBRARY MANAGEMENT SYSTEM</h1>
	              </div>
	    
                      <form name="frms" method="post" action="search.jsp">
	               <div id="nav">
                           <table>
					<input type="text" placeholder="Search..." name="search">
                          
                           <input type ="Submit" value="Search" id="button" action="window.location.href='search.jsp'">
                     
				   
						<a href="login.jsp">LOGIN</a> 
                                                <a href="ret.jsp">RETURN</a>
				                <a href="lendbk.jsp">ISSUE</a>
                                                <a href="stud.jsp">STUDENT</a>
	         
                        </table>
                        </div>

                       <div id="content">
                           <div id="frm">
                                     
                           </div>          
                      </div>
                   
                        </form>
                   
                      
            </div>
        </body>
</html>
