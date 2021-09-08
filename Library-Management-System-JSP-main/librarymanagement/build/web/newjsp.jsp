
<%--
    Document   : newjsp
    Created on : 23 Aug, 2019, 5:12:21 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <form name="frm" method="post">
            <table>
	<tr>
		<td colspan="4" align="center">STUDENT ENROLEMENT</td>
	</tr>
	
	<tr>
		<td>NAME</td>
		<td><input type="text" name="txtName"></td>
	</tr>
	<tr>
		<td>AGE</td>
		<td><input type="text" name="txtAge"></td>
	</tr>
	
	<tr>
            <td colspan="4" align="center"><input type="Submit" name="btnSubmit" value="Submit"></td>
	</tr>
</table>
        </form>
    </body>
</html>
<%
   
    Class.forName("com.mysql.jdbc.Driver");
     Connection cn =DriverManager.getConnection("jdbc:mysql://localhost:3306/libdb","root","");
     Statement st=cn.createStatement();
    String btn=request.getParameter("btnSubmit");
    if ( btn !=null)
    {
       String n=request.getParameter("txtName");
       String a=request.getParameter("txtAge");
      String q="insert into tb(name,age) values ('"+n+"','"+a+"')";
       int z=st.executeUpdate(q);
      out.println("<h1>inserted</h1>");
      // response.sendRedirect("login.jsp");
    }

   // catch(Exception e)
    else
            {
            System.out.println("something went wrong");
            }
      %>
