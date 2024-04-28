/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package mx.itson.proyectoappweb.modelo.idao;

/**
 *
 * @author PC
 */
import java.util.List;
import mx.itson.proyectoappweb.modelo.dominio.Estilo;

public interface IEstiloDAO {

    Estilo crearEstilo(Estilo estilo);

    boolean actualizarEstilo(Estilo estilo);

    Estilo consultarEstiloID(Long id);

    boolean eliminarEstilo(Estilo estilo);

    List<Estilo> obtenerTodosEstilos();

}
