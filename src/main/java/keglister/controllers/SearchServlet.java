package keglister.controllers;

import keglister.dao.DaoFactory;
import keglister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "SearchServlet", urlPatterns = "/search/*")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String searchString = req.getParameter("search");
        try {
            req.setAttribute("ads", DaoFactory.getAdsDao().searchAds(searchString));
        }catch (SQLException e){
            e.printStackTrace();
        }
        req.setAttribute("searchString", searchString);
        req.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(req, resp);
    }
}
