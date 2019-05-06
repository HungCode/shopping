/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import entity.Account;
import entity.Person;
import facade.AccountFacadeLocal;
import facade.PersonFacade;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author laptopfpt.com.vn
 */
@WebServlet(name = "Registry", urlPatterns = {"/registry"})
public class Registry extends HttpServlet {

    @EJB
    private AccountFacadeLocal accountFacade;

    @EJB
    private PersonFacade personFacade;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Registry</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Registry at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        request.getRequestDispatcher("registry.jsp").forward(request, response);
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
//        request.getRequestDispatcher("registry.jsp").forward(request, response);

        String fullname = request.getParameter("fullname");
        String gender = request.getParameter("gender");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String pass = request.getParameter("pass");
//
        String[] d = request.getParameter("birthday").split("-");
        Date birthday = new Date(Integer.parseInt(d[0]), Integer.parseInt(d[1]), Integer.parseInt(d[2]));
//
//        if (password == pass && !username.equals("") && !fullname.equals("") && !gender.equals("") && !birthday.equals("")) {
//            Account acc = new Account();
//            acc.setUsername(username);
//            acc.setPassword(password);
//            try {
//                 accountFacade.create(acc);
//                 response.sendRedirect("category.jsp");
//            } catch (Exception e) {
//             response.setContentType("text/html;charset=UTF-8");
        if(username!=null)
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Registry</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Registry at " + "false" + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
            }
           
//            personFacade.create(new Person(fullname, gender, birthday));
        }
//        else{
//            
//        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
