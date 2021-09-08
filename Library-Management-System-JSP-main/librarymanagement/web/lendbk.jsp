<%-- 
    Document   : lendbk
    Created on : 27 Aug, 2019, 9:49:24 AM
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
                                            <td colspan="4" align="center">ISSUE BOOK</td>
                                        </tr>
                                        <tr>
                                                <td>ISBN</td>
                                                <td><input type="text" name="isbn"></td>
                                        </tr>
                                        <tr>
                                                <td>ROLL NO.</td>
                                                <td><input type="text" name="rollno"></td>
                                        </tr>
                                        <tr>
                                                <td>LEND DATE</td>
                                                <td><input type="date" name="ledate"></td>
                                        </tr>
                                        <tr>
                                                <td>RETURN</td>
                                                <td><input type="date" name="redate"></td>
                                        </tr>
                                        <tr>
                                                      <td colspan="4" align="center">
                                          <input type="Submit" value="ISSUE" name="btnSubmit"></td>
                                                 </tr>

                                        <%
   
     Class.forName("com.mysql.jdbc.Driver");
     Connection cn =DriverManager.getConnection("jdbc:mysql://localhost:3306/itlib","root","");
     Statement st=cn.createStatement();
    String btn=request.getParameter("btnSubmit");
    if ( btn !=null)
    {
       String isbn=request.getParameter("isbn");
       String rollno=request.getParameter("rollno");
       String lend=request.getParameter("ledate");
      String rent=request.getParameter("ledate");
       String q="insert into bklender(isbn,student,lend,ret) values ('"+isbn+"','"+rollno+"','"+lend+"','"+rent+"')";
       int z=st.executeUpdate(q);
      
    }
    

%>

                                        </table>
                      </div>
                          
        </div>
            </form>
    </body>
</html>
