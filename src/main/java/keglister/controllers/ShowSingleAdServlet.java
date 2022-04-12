package keglister.controllers;

import keglister.dao.DaoFactory;
import keglister.models.Ad;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ShowSingleAdServlet", value = "/ShowSingleAdServlet")
public class ShowSingleAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Ad> ads;
        ads = DaoFactory.getAdsDao().all();
        String query = request.getQueryString();
        String trimmedQuery = query.substring(0, query.indexOf("%"));
        request.setAttribute("ads", DaoFactory.getAdsDao().one(trimmedQuery));
        request.getRequestDispatcher("/WEB-INF/ads/show_ad.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
