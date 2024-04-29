/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package mx.itson.proyectoappweb.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import mx.itson.proyectoappweb.modelo.dominio.Usuario;
import mx.itson.proyectoappweb.modelo.facbricadao.FabricaDAO;

/**
 *
 * @author Daniel Alameda
 */
@WebServlet(name = "SrvLogin", urlPatterns = {"/SrvLogin"})
public class SrvLogin extends HttpServlet {

    private FabricaDAO fabricaDAO = new FabricaDAO();

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

        String email = request.getParameter("email");
        String contrasenia = request.getParameter("password");

        List<Usuario> usuarios = fabricaDAO.crearUsuarioDAO().obtenerTodosUsuario();
        Usuario usuarioBuscado = null;
        for (Usuario usuario : usuarios) {
            if (usuario.getCredencial().getCorreo().equals(email) && usuario.getCredencial().getContrasenia().equals(contrasenia)) {

                usuarioBuscado = usuario;
            }
        }

        if (usuarioBuscado != null) {

            HttpSession sesion = request.getSession();
            sesion.setAttribute("usuario", usuarioBuscado);

            response.sendRedirect(request.getContextPath() + "/index.jsp");

        }

    }
}
