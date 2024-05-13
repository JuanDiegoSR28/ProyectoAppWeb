/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package mx.itson.proyectoappweb.servlet;

import jakarta.servlet.ServletException;
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
 * @author PC
 */
public class SrvSearchUser extends HttpServlet {

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

        String userId = request.getParameter("idToSearch");
        
        Long idUser = 3L;

        List<Usuario> usuarios = fabricaDAO.crearUsuarioDAO().obtenerTodosUsuario();
        Usuario usuarioBuscado = null;
        for (Usuario usuario : usuarios) {
            if (usuario.getId_usuario().equals(idUser)) {
                usuarioBuscado = usuario;
            }
        }

        if (usuarioBuscado != null) {
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuarioBuscado);
            session.setAttribute("nombreUsuarioSesion", usuarioBuscado.getNombres() + " " + usuarioBuscado.getApellido_paterno());
            session.setAttribute("tipo_usuarioSesion", usuarioBuscado.getTipo_usuario().toString());
            
            request.setAttribute("apellidoP", usuarioBuscado.getApellido_paterno());
            request.setAttribute("apellidoM", usuarioBuscado.getApellido_materno());
            request.setAttribute("fechaN", "2024");
            request.setAttribute("nombre", usuarioBuscado.getNombres());
            request.setAttribute("telefono", usuarioBuscado.getTelefono());
            request.setAttribute("correo", usuarioBuscado.getCredencial().getCorreo());
            request.setAttribute("pass", usuarioBuscado.getCredencial().getContrasenia());
            request.setAttribute("estado", "");
            request.setAttribute("ciudad", "");
            request.setAttribute("codigo", "");
            request.setAttribute("colonia", "");
            request.setAttribute("calle", "");
            request.setAttribute("numero", "");
            request.getRequestDispatcher("updateUser.jsp").forward(request, response);

        } else {
            request.setAttribute("userObtained", usuarioBuscado);
            HttpSession sesion = request.getSession();
            response.sendRedirect(request.getContextPath() + "/products.jsp");
        }
    }

}
