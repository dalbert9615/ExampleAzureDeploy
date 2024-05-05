package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PersonaDAO {

    private PersonaDTO fromResultSet(ResultSet rs) throws SQLException {
        PersonaDTO persona;
        int idCarrera = rs.getInt("id");
        String nombre = rs.getString("nombre");
        persona = new PersonaDTO(idCarrera, nombre);
        return persona;
    }

    public List<PersonaDTO> selectAll() {
        List<PersonaDTO> result = new ArrayList<>();
        try (Connection conn = Conexion.getConnection()) {
            if (conn != null) {
                String query = "SELECT * FROM personas;";
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(query);
                while (rs.next()) {
                    PersonaDTO persona = fromResultSet(rs);
                    if (persona != null) {
                        result.add(persona);
                    }
                }
            }
        } catch (SQLException ex) {
            result = null;
        }
        return result;
    }
}
