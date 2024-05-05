package controller;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.*;

@WebServlet(name = "Personas", urlPatterns = {"/Personas"})
public class Personas extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<PersonaDTO> listaPersonas = new PersonaDAO().selectAll();
        request.setAttribute("listaPersonas", listaPersonas);
        RequestDispatcher rd = request.getRequestDispatcher("personas.jsp");
        rd.forward(request, response);
    }
}
