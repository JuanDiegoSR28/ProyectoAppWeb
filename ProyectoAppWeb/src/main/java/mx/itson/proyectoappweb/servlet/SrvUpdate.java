
package mx.itson.proyectoappweb.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.itson.proyectoappweb.modelo.dominio.Credencial;
import mx.itson.proyectoappweb.modelo.dominio.Direccion;
import mx.itson.proyectoappweb.modelo.dominio.Genero;
import mx.itson.proyectoappweb.modelo.dominio.TipoUsuario;
import mx.itson.proyectoappweb.modelo.dominio.Usuario;
import mx.itson.proyectoappweb.modelo.facbricadao.FabricaDAO;


/**
 *
 * @author PC
 */
public class SrvUpdate extends HttpServlet {

    FabricaDAO fabricaDAO = new FabricaDAO();


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
        String nombre = request.getParameter("nombre");
        String apellidoPaterno = request.getParameter("apellidopaterno");
        String apellidoMaterno = request.getParameter("apellidomaterno");

        String email = request.getParameter("textsend");
        String contrasenya = request.getParameter("password");
        String numeroTelefonico = request.getParameter("phone");

        String estado = request.getParameter("estado");
        String ciudad = request.getParameter("ciudad");
        String codigoPostal = request.getParameter("codigopostal");

        String fechaNacimiento = request.getParameter("fechanacimiento");

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

        // Parsear la cadena a un objeto Date
        Date fechaJava = null;
        try {
            fechaJava = formatter.parse(fechaNacimiento);
        } catch (ParseException ex) {
            Logger.getLogger(SrvRegister.class.getName()).log(Level.SEVERE, null, ex);
        }

        String genero = request.getParameter("genero");
        Genero generoRegistro = Genero.MASCULINO;
        if (genero == "Mujer") {
            generoRegistro = Genero.FEMENINO;
        }

        String colonia = request.getParameter("colonia");
        String calle = request.getParameter("calle");
        String numero = request.getParameter("numero");

        List<Direccion> direcciones = new ArrayList<>();
        Usuario usuario = new Usuario(nombre, apellidoPaterno,
                apellidoMaterno, numeroTelefonico, fechaJava,
                generoRegistro, TipoUsuario.CLIENTE, new Credencial(email, contrasenya));
        direcciones.add(new Direccion(calle, numero, colonia, ciudad, estado, codigoPostal, usuario));

        Boolean respuestaUsuario = fabricaDAO.crearUsuarioDAO().actualizarUsuario(usuario);
        
        if(respuestaUsuario == true)
        {
            
            HttpSession sesion = request.getSession();
            sesion.setAttribute("usuario", respuestaUsuario);

            response.sendRedirect(request.getContextPath() + "/index.jsp");
        }
        
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
