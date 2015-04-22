/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ea.servlet;

import ea.ejb.UsersFacade;
import ea.entity.Users;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kasia
 */
public class loginServlet extends HttpServlet {
    @EJB
    private UsersFacade usersFacade;

    
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

        String email = null;
        String password = null;
        
        if(request.getParameter("email") != null)
            email = request.getParameter("email");

        if(request.getParameter("password") != null)
            password = request.getParameter("password");
        
        boolean login;
        
        login = usersFacade.findLogin(email, password);

        if (login){
            Users u = new Users();
            u = usersFacade.findByEmail(email);
            if (u.getBlocked() == 0){
                String name = u.getName();
                HttpSession session = request.getSession();
                session.setAttribute("name", name);
                session.setMaxInactiveInterval(60*60);
                Cookie userName = new Cookie("name", name);
                userName.setMaxAge(60*60);
                response.addCookie(userName);
                if (u.getType() == 0) response.sendRedirect("login.jsp");
                else {
                    session.setAttribute("admin","yes");
                    response.sendRedirect("admin.jsp");
                }
                }
            else{
                response.sendRedirect("blocked.jsp");
            }
        }
        else {
           response.sendRedirect("error.jsp");
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
        processRequest(request, response);
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
