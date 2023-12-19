<%-- 
    Document   : Login
    Created on : Dec 19, 2023, 1:30:22 PM
    Author     : tiend
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
        <form action="dang-nhap" method="POST">
            <table border="0">
               
                <tbody>
                    <tr>
                        <td>Email :</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password :</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>                  
                </tbody>
                </tbody>
            </table>
            <%
                String error=(String)request.getAttribute("loginFail");
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
