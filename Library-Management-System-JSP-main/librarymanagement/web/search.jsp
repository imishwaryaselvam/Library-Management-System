<%-- 
    Document   : search
    Created on : 28 Aug, 2019, 12:06:30 AM
    Author     : dhara
--%>

<%-- 
    Document   : status
    Created on : 27 Aug, 2019, 7:52:34 PM
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
            <form method="post">
                          <div id="bg">
	       
	              <div id="header">
	                    <h1> LIBRARY MANAGEMENT SYSTEM</h1>
	              </div>
                      <div id="nav">
                                   
                                      <a href="index.jsp">HOME</a>
                                       
                                                   
                                                
                        </div>
	                <div id="content">
                                 <div id="frm">
                                      <table border="2" align="center">

<tr>

<td>TITLE</td>


</tr>
       <%
 String search = (String)request.getParameter("search");
 Class.forName("com.mysql.jdbc.Driver");
 Connection cn =DriverManager.getConnection("jdbc:mysql://localhost:3306/itlib","root","");
Statement st=cn.createStatement();
String q="select title from bkdata where title like '%"+search+"%'";
 ResultSet rs= st.executeQuery(q);
         while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("title") %></td>
                
            </tr>
            <%}%>
                 </table><br>
  
    </div>
        </div>
                 </div>
  </form>
            </body>
</html>
