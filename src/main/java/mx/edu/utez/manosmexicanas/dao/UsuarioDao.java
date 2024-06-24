package mx.edu.utez.manosmexicanas.dao;


import mx.edu.utez.manosmexicanas.model.Usuario;
import mx.edu.utez.manosmexicanas.utils.DatabaseConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDao {
    //Programar una función R (lectura) para obtener un usuario
    //con el fin de hacer el inicio de sesión
    public Usuario getOne(String correo, String contra){
        Usuario u = new Usuario();
        String query = "select * from usuarios where correo = ? and contra = sha2(?,256)";

        try{
            //1) conectarnos a la BD
            Connection con = DatabaseConnectionManager.getConnection();
            //2) Configurar el query y ejecutarlo
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,correo);
            ps.setString(2,contra);
            ResultSet rs = ps.executeQuery();
            //3) Obtener la información
            if(rs.next()){
                //Entonces llenamos la información del usuario
                u.setId(rs.getInt("id_usuario"));
                u.setNombre_usuario(rs.getString("nombre_usuario"));
                u.setCorreo(rs.getString("correo"));
                u.setTelefono(rs.getString("telefono"));
                u.setDireccion(rs.getString("direccion"));
                u.setContra(rs.getString("contra"));
                u.setEstado(rs.getString("estado"));
                u.setTipo_usuario(rs.getString("tipo_usuario"));
            }
        } catch(SQLException e){
            e.printStackTrace();
        }
        return u;
    }
}
