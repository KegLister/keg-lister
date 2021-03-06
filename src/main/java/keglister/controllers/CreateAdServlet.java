package keglister.controllers;

import keglister.dao.DaoFactory;
import keglister.models.Ad;
import keglister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session.getAttribute("user") != null){
            User user = (User) session.getAttribute("user");
            request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
                    .forward(request, response);
        }else {
            response.sendRedirect("/login");
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        HttpSession session = request.getSession(false); //gets current session without creating new one
        if (session.getAttribute("user") != null) {
            User user = (User) session.getAttribute("user");
            Ad ad = new Ad(
                    user.getId(),
                    request.getParameter("name"),
                    request.getParameter("address"),
                    request.getParameter("website"),
                    request.getParameter("phone"),
                    request.getParameter("imageURL"),
                    request.getParameter("type")
            );
            DaoFactory.getAdsDao().insert(ad);
            response.sendRedirect("/ads");
        } else {
            response.sendRedirect("/login");
        }
    }
}
