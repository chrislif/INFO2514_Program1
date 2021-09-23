<%-- 
    Document   : index
    Created on : Jan 24, 2018, 9:42:52 AM
    Author     : fssco
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="business.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ArrayList<Person> empList = (ArrayList<Person>) request.getAttribute("empList");
    
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <title>Employee Database</title>
    </head>
    <body>
        <form action="servlet" class="empData">
            <input type="hidden" name="action" value="search">
            <div class="formContent">
                <div class="formInput">
                    <label>Date Search: </label>
                    <input type="text" name="dateSearch">
                    <input type="submit" value="Search">
                </div>
            </div>
        </form>
            
        <form action="servlet" class="empData">
            <div class="formContent">
                <table class="empTable">
                    <% 
                    if (empList != null) {
                        for (Person p : empList) {
                            String firstName = p.getFirstName();
                            %>
                            <th>
                                <tr>
                                    ${firstName}
                                </tr>
                            </th>
                            <%
                        }
                    }
                    %>
                </table>
            </div>
        </form>
    </body>
</html>
