<%-- 
    Document   : them
    Created on : Dec 19, 2023, 1:39:35 PM
    Author     : tiend
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="Model.DBContext"%>
<%@page import="Model.TapChi"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            DBContext conn=new DBContext();
            ResultSet rs=conn.getData();
        %>
        <h1>Danh Sach Tap Chi</h1>
        <table border="1"> 
            <tbody>
                <tr>
                    <td>MaTC</td>
                    <td>TenTC</td>
                    <td>NhaXB</td>
                    <td>NamXB</td>
                </tr>
                <%
                    while(rs.next())
                    {
                %>
                <tr>
                    <td><%= rs.getString("MaTC")%></td>
                    <td><%= rs.getString("TenTC")%></td>
                    <td><%= rs.getString("NhaXB")%></td>
                    <td><%= rs.getString("NamXB")%></td>
                </tr>
            </tbody>
              <%
                 }
             %>   
        </table>
        <hr><!-- comment -->
        <h1>Them Tap Chi</h1>
        <form action="XuLyDL ">
            <table border="0">
                
                <tbody>
                    <tr>
                        <td>Ma TC</td>
                        <td><input type="text" name="matc" value="" /></td>
                        
                    </tr>
                    <tr>
                        <td>Ten TC</td>
                        <td><input type="text" name="tentc" value="" /></td>
                    </tr>
                     <tr>
                        <td>Nha Xb</td>
                        <td><input type="text" name="nhaxb" value="" /></td>
                        
                    </tr>
                    <tr>
                        <td>Nam XB</td>
                        <td><input type="text" name="namxb" value="" /></td>
                    </tr>
                     <tr>
                         <td><input type="submit" value="Them" /></td>
                         <td><input type="reset" value="Lam Moi" /></td>
                    </tr>
                </tbody>
            </table>
             <%
                String error=(String)request.getAttribute("trungma");
                if(error!=null)
                {
              %>
              <%= error%>
            <%  
            }
            %>
        </form>
    </body>
</html>
