/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package mx.itson.proyectoappweb.controlador;

import java.sql.SQLException;
import javax.persistence.EntityManagerFactory;

public interface IConexionBD {

    EntityManagerFactory useConnectionMySQL() throws SQLException;
}
