<%-- 
    Document   : db
    Created on : 25 Aug, 2019, 4:29:22 PM
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
                                   
                                      <a href="index2.jsp">HOME</a>
                                       <a href="db.jsp">ALL BOOK</a>
                                       <a href="status.jsp">STATUS</a>
                                       <a href="lender.jsp">BORROW</a>
                                       <a href="addbook.jsp">ADDBOOK</a> 
                                       <a href="index.jsp">LOGOUT</a>                       
                                                
                        </div>
	                <div id="content">
                                 <div id="frm">
                                      <table border="2" align="center">

<tr>
<td>ISBN</td>
<td>TITLE</td>
<td>AUTHOR</td>
<td>QUANTITY</td>
<td>CATEGORY</td>
<td>RATE</td>
<td>PUBLICATION</td>

</tr>
        <%
             Class.forName("com.mysql.jdbc.Driver");
     Connection cn =DriverManager.getConnection("jdbc:mysql://localhost:3306/itlib","root","");
     Statement st=cn.createStatement();
   String q="select * from bkdata ";
       ResultSet rs= st.executeQuery(q);

          while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("isbn") %></td>
                <td><%=rs.getString("title") %></td>
                <td><%=rs.getString("author") %></td>
                <td><%=rs.getInt("quantity") %></td>
                <td><%=rs.getString("category") %></td>
                <td><%=rs.getFloat("rate") %></td>
               <td><%=rs.getString("publication") %></td>
            
            </tr>
            <%}%>
                 </table><br>
  
    </div>
        </div>
                 </div>
  </form>
            </body>
</html>
