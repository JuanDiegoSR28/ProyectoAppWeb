/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/AdvancedFilter.java to edit this template
 */
package mx.itson.proyectoappweb.filtro;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletRequestWrapper;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpServletResponseWrapper;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Daniel Alameda
 */
@WebFilter(filterName = "FiltroLogueo", urlPatterns = {"/*"})
public class FiltroLogueo implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void destroy() {
    }
    private final static String[] pathsPublicos = {
        "login.jsp", "SCE_register.jsp", "assets", "scripts", "SrvRegister", "SrvLogin"};

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        String path = this.getPathSolicitado(httpRequest);
        boolean isPathPrivado = this.isPathPrivado(path);
        boolean isUsuarioLogueado = this.isUsuarioLogueado(httpRequest);
        if (isPathPrivado && !isUsuarioLogueado) {
            request.getServletContext()
                    .getRequestDispatcher("/login.jsp")
                    .forward(request, response);
            return;

        }
        // avanza normalmente
        chain.doFilter(request, response);
    }

    private String getPathSolicitado(HttpServletRequest request) {
        String uriSolicitada = request.getRequestURI();
        String path = uriSolicitada.substring(request.getContextPath().length());
        return path;
    }

    private boolean isPathPrivado(String path) {
        for (String pathPublico : FiltroLogueo.pathsPublicos) {
            if (path.startsWith("/" + pathPublico)) {
                return false;
            }
        }
        return true;
    }

    private boolean isUsuarioLogueado(HttpServletRequest request) {
        HttpSession sesion = request.getSession(false);
        return (sesion != null && sesion.getAttribute("usuario") != null);
    }

}
