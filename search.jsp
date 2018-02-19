<%-- 
    Document   : fetch
    Created on : 29 Mar, 2013, 1:03:40 PM
    Author     : ROSHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
   <% Class.forName("oracle.jdbc.OracleDriver");%>
<HTML>
    <HEAD>
        <TITLE>Fetching Data From a Database</TITLE>
    </HEAD>

    <BODY>
        <H1>Database Lookup</H1>
        <FORM ACTION="search.jsp" METHOD="POST">
            Please enter the ID of the publisher you want to find:
            <BR>
            <INPUT TYPE="TEXT" NAME="src">
            <BR>
            <BR>
            <INPUT TYPE="TEXT" NAME="des">
            <BR>
            <INPUT TYPE="SUBMIT" value="Submit">
        </FORM>


        <H1>Fetching Data From a Database</H1>

        <% 	    
            Connection connection=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "roshan", "rosh");
            Statement statement = connection.createStatement();

            String source = request.getParameter("src");
            String destination = request.getParameter("des");

            ResultSet resultset = 
                statement.executeQuery("select * from search where source = '" + source + "'"); 

            if(!resultset.next()) {
                out.println("Sorry, could not find that publisher. " +
                "Please <A HREF='tryAgain.html'>try again</A>.");
            } else {
        %>

        <TABLE BORDER="1">
            <TR>
               <TH>ID</TH>
               <TH>Name</TH>
               
           </TR>
           <TR>
               <TD> <%= resultset.getString(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
               <TD> <%= resultset.getString(3) %> </TD>
               
           </TR>
       </TABLE>
       <BR>
       <% 
           }
       %>
    </BODY>
</HTML>
