/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package mx.itson.proyectoappweb.modelo.idao;

import java.util.List;
import mx.itson.proyectoappweb.modelo.dominio.Imagen;

public interface IImagenDAO {

    Imagen crearImagen(Imagen imagen);

    boolean actualizarImagen(Imagen imagen);

    Imagen consultarImagenID(Long id);

    boolean eliminarImagen(Imagen imagen);

    List<Imagen> obtenerTodasTallas();

}
