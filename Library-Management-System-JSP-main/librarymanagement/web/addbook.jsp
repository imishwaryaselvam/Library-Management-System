<%-- 
    Document   : addbook
    Created on : 25 Aug, 2019, 4:32:00 PM
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
                                                 <a href="admin.jsp">ADMIN</a>
                                                 <a href="index.jsp">LOGOUT</a>            
                                                
                        </div>
	                <div id="content">
                                 <div id="frm">
                                
                                   <table align="center" cellspacing="10" cellpadding="5">
                                        <tr>
                                            <td colspan="4" align="center">ADD BOOK</td>
                                        </tr>
                                        <tr>
                                                <td>ISBN</td>
                                                <td><input type="text" name="isbn"></td>
                                        </tr>
                                        <tr>
                                                <td>TITLE</td>
                                                <td><input type="text" name="title"></td>
                                        </tr>
                                        <tr>
                                                <td>AUTHOR</td>
                                                <td><input type="text" name="author"></td>
                                        </tr>
                                        <tr>
                                                <td>QUANTITY</td>
                                                <td><input type="text" name="quan"></td>
                                        </tr>
                                        <tr>
                                                <td>SUBJECT</td>
                                                <td><select name="sub">
                                                    <option value="">--select one--</option>
                                                    <option value="Programming Languages">Programming Languages</option>
                                                     <option value="Digital Electronics">Digital Electronics</option>
                                                    <option value="Data Structures">Data Structures</option>
                                                    <option value="Algorithm Design">Algorithm Design and Analysis.</option>
                                                    <option value="Discrete Mathematics">Discrete Mathematics.</option>
                                                    <option value="Graph Theory and combinatorics">Graph Theory and combinatorics</option>
                                                    <option value="Computer Organisation and Architecture">Computer Organisation and Architecture</option>
                                                    <option value="Operating Systems">Operating Systems</option>
                                                    <option value="Compiler Design">Compiler Design</option>
                                                    <option value="DataBase Management">DataBase Management</option>
                                                    <option value="Theory of Computation">Theory of Computation</option>
                                                    <option value="Micro Processors">Micro Processors</option>
                                                    <option value="Software Engineering">Software Engineering</option>
                                                    <option value="Artificial Intelligence">Artificial Intelligence</option>
                                                    <option value="Computer Networks">Computer Networks</option>
                                                    <option value="Formal language">Formal language and Automata Theory</option>
                                                    <option value="Cryptography and">Cryptography and Network Security.</option>
                                                    <option value="Parallel and">Parallel and Distributive Computing</option>
                                                    <option value="Image Processing">Image Processing</option>
                                                    <option value="Information and">Information and Coding Theory</option>
                                                     <option value="Pattern Recognition">Pattern Recognition</option>
                                                    <option value="Data Mining">Data Mining</option>
                                                    <option value="Information Retrieval">Information Retrieval</option>
                                                    <option value="Machine Learning">Machine Learning</option>
                                                    <option value="Computational geometry">Computational geometry</option>
                                                    <option value="Complexity Theory">Complexity Theory</option>
                                                    <option value="Wireless and">Wireless and Mobile Communication</option>
                                                    <option value="Computer Graphics">Computer Graphics</option>
                                                    <option value="Simulation and Modelling">Simulation and Modelling</option>
                                                    <option value="Soft Computing">Soft Computing</option>
                                                    <option value="Optimization Techniques">Optimization Techniques</option>
                                                    <option value="Data Compression">Data Compression</option>
                                                    <option value="VLSI Design">VLSI Design and Testing</option>
                                                    <option value="Cloud Computing">Cloud Computing</option>
                                                    <option value="Quantum Computing">Quantum Computing</option>
                                                    <option value="Bio-informatics Algorithms">Bio-informatics Algorithms</option>
                                                    <option value="Embedded Systems">Embedded Systems</option>
                                                    <option value="Probability Theory">Probability Theory</option>
                                                    </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>RATE</td>
                                                    <td><input type="text" name="rate"></td>
                                                </tr>
                                                 <tr>
                                                       <td>PUBLICATION</td>
                                                        <td><input type="text" name="pub"></td>
                                                 </tr>
                                                 <tr>
                                                      <td colspan="4" align="center">
                                          <input type="Submit" value="ADD" name="btnSubmit"></td>
                                                 </tr>
                                            </table>
                                     <%
   
     Class.forName("com.mysql.jdbc.Driver");
     Connection cn =DriverManager.getConnection("jdbc:mysql://localhost:3306/itlib","root","");
     Statement st=cn.createStatement();
    String btn=request.getParameter("btnSubmit");
    if ( btn !=null)
    {
       String isbn=request.getParameter("isbn");
       String title=request.getParameter("title");
       String author=request.getParameter("author");
       int quan=Integer.parseInt(request.getParameter("quan"));
       String cat=request.getParameter("sub");
       float rate=Float.parseFloat(request.getParameter("rate"));
       String pub=request.getParameter("pub");
      String q="insert into bkdata(isbn,title,author,quantity,category,rate,publication) values ('"+isbn+"','"+title+"','"+author+"','"+quan+"','"+cat+"','"+rate+"','"+pub+"')";
       int z=st.executeUpdate(q);
      
    }
    

%>
                                            </div>
                                         </div>
                                </div>
                                  
                         
                        
                        
    </form>  
</body>
</html>
