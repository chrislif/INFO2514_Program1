<%-- 
    Document   : index
    Created on : Sep 23, 2021, 3:35:35 PM
    Author     : cl473375
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <title>Program 1</title>
        <style>
            <%@include file="style.css" %>
        </style>
    </head>
    <body>
        <nav>
            <form action="servlet" class="empData">
                <input type="hidden" name="action" value="goSearch">
                <div class="formContent">
                    <div class="formInput">
                        <input type="submit" value="Employee Database">
                    </div>
                </div>
            </form>
        </nav>
    </body>
</html>
