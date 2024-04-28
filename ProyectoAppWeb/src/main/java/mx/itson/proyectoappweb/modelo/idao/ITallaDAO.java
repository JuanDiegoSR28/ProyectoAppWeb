/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package mx.itson.proyectoappweb.modelo.idao;

import java.util.List;
import mx.itson.proyectoappweb.modelo.dominio.Talla;

public interface ITallaDAO {

    Talla crearTalla(Talla talla);

    boolean actualizarTalla(Talla talla);

    Talla consultarTallaID(Long id);

    boolean eliminarTalla(Talla talla);

    List<Talla> obtenerTodasTallas();

}
