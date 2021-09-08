<%-- 
    Document   : login
    Created on : 25 Aug, 2019, 8:22:00 AM
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
                                   
                                     
						
                                                 <a href="index.jsp">HOME</a>
                                                
                                                 
                                                
                        </div>
	                <div id="content">
                                 <div id="frm">
                                
                                   <table align="center" cellspacing="10" cellpadding="5">
                                        <tr>
                                        <tr>
                                            <td colspan="4" align="center"><h3>ADMIN LOGIN</h3></td>
                                        </tr>
                                        
                                       <tr>
                                           <td colspan="2"> ADMIN </td>
                                           <td><input type="text" name="admin"></td>
                                       </tr>
                                       
                                       
                                       <tr>
                                        <td colspan="2">PASSWORD</td>
                                        <td colspan="2"><input type="password" name="pwd"></td>
                                       </tr> 
                                      
                                      
                                       <tr><td colspan="4" align="center"> 
                                       <input type="submit" name="Submitbtn" value="SUBMIT">
                                       </td>
                                       </tr>
                                        </table>
                                        
                                </div>    
                            </div>
                        </div>
  </form>  
</body>
</html>
<%
    String btn=request.getParameter("Submitbtn");
   if(btn!=null)
        
   {
    String username=request.getParameter("admin");
    String password=request.getParameter("pwd");
    if ((username.equals("avc") && password.equals("avc")))
    { 
        session.setAttribute("username",username); 
    response.sendRedirect("admin.jsp");
    }
    else
        response.sendRedirect("index.jsp");
   
}
    %>


    