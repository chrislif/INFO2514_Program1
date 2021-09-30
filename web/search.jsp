<%-- 
    Document   : index
    Created on : Jan 24, 2018, 9:42:52 AM
    Author     : fssco
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="business.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ArrayList<Person> empList = (ArrayList<Person>) request.getAttribute("empList");
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <style>
            <%@include file="style.css" %>
        </style>
        <title>Employee Database</title>
    </head>
    <body>
        <nav>
            <form action="servlet" class="empData">
                <input type="hidden" name="action" value="goHome">
                <div class="formContent">
                    <div class="formInput">
                        <input type="submit" value="Home">
                    </div>
                </div>
            </form>
        </nav>
        
        <form action="servlet" class="empData">
            <input type="hidden" name="action" value="search">
            <div class="formContent">
                <div class="formInput">
                    <div>
                        <label>Date Search: </label>
                        <input type="text" name="dateSearch" value="<%=request.getParameter("dateSearch")%>">
                        <input type="submit" value="Search">
                    </div>
                    
                    <div>
                        <label>Before: </label>
                        <input type="radio" id="before_search" name="search" value="before">
                        <label>After: </label>
                        <input type="radio" id="after_search" name="search" value="after">
                    </div>
                </div>
            </div>
        </form>
            
        <form action="servlet" class="empData">
            <div class="formContent">
                <table class="empTable">
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Hire Date</th>
                    </tr>
                    <%
                    if (empList != null) {
                        for (Person p : empList) {
                            LocalDate hireDate = p.getHireDate();
                            String dateInput = request.getParameter("dateSearch");
                            String searchDirection = request.getParameter("search");
                            
                            if (dateInput != "" && searchDirection != null) {
                                LocalDate dateSearch = LocalDate.parse(dateInput);
                                
                                if (searchDirection.equals("before")) {
                                    if (hireDate.isBefore(dateSearch)) {
                                    %>
                                    <tr>
                                        <td>
                                        <% out.print(p.getEmployeeID()); %>
                                        </td>
                                        <td>
                                        <% out.print(p.getFirstName()); %>
                                        </td>
                                        <td>
                                        <% out.print(p.getLastName()); %>
                                        </td>
                                        <td>
                                        <% out.print(p.getHireDate()); %>
                                        </td>
                                    </tr>
                                    <%
                                    }
                                }
                                else {
                                    if (hireDate.isAfter(dateSearch)) {
                                    %>
                                    <tr>
                                        <td>
                                        <% out.print(p.getEmployeeID()); %>
                                        </td>
                                        <td>
                                        <% out.print(p.getFirstName()); %>
                                        </td>
                                        <td>
                                        <% out.print(p.getLastName()); %>
                                        </td>
                                        <td>
                                        <% out.print(p.getHireDate()); %>
                                        </td>
                                    </tr>
                                    <%
                                    }
                                }
                            }
                            else {
                                %>
                                <tr>
                                    <td>
                                    <% out.print(p.getEmployeeID()); %>
                                    </td>
                                    <td>
                                    <% out.print(p.getFirstName()); %>
                                    </td>
                                    <td>
                                    <% out.print(p.getLastName()); %>
                                    </td>
                                    <td>
                                    <% out.print(p.getHireDate()); %>
                                    </td>
                                </tr>
                                <%
                            }
                        }
                    }
                    %>
                </table>
            </div>
        </form>
    </body>
</html>
