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
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "EditServlet", urlPatterns = "/ads/edit/*")
public class EditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Long.parseLong(req.getParameter("id"));

        try {
            req.setAttribute("ad", DaoFactory.getAdsDao().getAdById(id));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        req.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        User user = (User) session.getAttribute("user");
        Ad ad = new Ad(
                user.getId(),
                req.getParameter("name"),
                req.getParameter("address"),
                req.getParameter("website"),
                req.getParameter("phone"),
                req.getParameter("imageURL"),
                req.getParameter("type")
        );
        try {
            DaoFactory.getAdsDao().edit(ad);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        resp.sendRedirect("/profile");
    }
}

