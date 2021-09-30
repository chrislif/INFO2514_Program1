/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import data.EmployeeManagerDA;
import business.Person;
import java.util.ArrayList;

/**
 *
 * @author cl473375
 */
@WebServlet(name = "servlet", urlPatterns = {"/"})
public class servlet extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    @SuppressWarnings("ConvertToStringSwitch")
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        String url = "/search.jsp";
        String action = request.getParameter("action");


        if (action == null) {
            url = "/";
        }
        else if (action.equals("search")){
            ArrayList<Person> empList = EmployeeManagerDA.getAllEmployees();
            request.setAttribute("empList", empList);
            
            url = "/search.jsp";
        }
        else if (action.equals("goSearch")){
            url = "/search.jsp";
        }
        else {
            url = "/";
        }
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
