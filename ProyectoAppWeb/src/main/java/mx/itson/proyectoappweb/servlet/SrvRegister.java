package mx.itson.proyectoappweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
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
 * @author Daniel Alameda
 */
@WebServlet(name = "SrvRegister", urlPatterns = {"/SrvRegister"})
public class SrvRegister extends HttpServlet {

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
        Usuario usuarioEnc = fabricaDAO.crearUsuarioDAO().crearUsuario(usuario);

        if (usuarioEnc != null) {

            HttpSession sesion = request.getSession();
            sesion.setAttribute("usuario", usuarioEnc);
            sesion.setAttribute("nombreUsuario", usuarioEnc.getNombres() + " " + usuarioEnc.getApellido_paterno());
            sesion.setAttribute("tipo_usuario", usuarioEnc.getTipo_usuario().toString());
            response.sendRedirect(request.getContextPath() + "/index.jsp");

        }

    }
}
