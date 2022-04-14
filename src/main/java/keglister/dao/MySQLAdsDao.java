package keglister.dao;

import com.mysql.cj.jdbc.Driver;
import keglister.controllers.Config;
import keglister.models.Ad;
import keglister.models.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }


    public List<Ad> one(String name) {
        PreparedStatement stmt = null;
        try {
            String sql = "SELECT * FROM ads WHERE name LIKE ?";
            String wildcards = "%" + name + "%";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, wildcards);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    public List<Ad> adsByUser(User user) {
        PreparedStatement stmt = null;
        try {
            String sql = "SELECT * FROM ads WHERE user_id = ?";

            String idString = "" + user.getId();
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, idString);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public void delete(long id) {
        PreparedStatement stmt = null;
        try {
            String sql = "DELETE FROM ads WHERE id = ?";
            stmt = connection.prepareStatement(sql);
            stmt.setLong(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void edit(Ad ad) throws SQLException {
        String query = "UPDATE ads SET name = ?, address = ?, website = ?, phone = ?, image = ?, type = ? WHERE id = ?;";
        PreparedStatement statement = connection.prepareStatement(query);
        statement.setString(1, ad.getName());
        statement.setString(2, ad.getAddress());
        statement.setString(3, ad.getWebsite());
        statement.setString(4, ad.getPhone());
        statement.setString(5, ad.getImage());
        statement.setString(6, ad.getType());
        statement.setLong(7, ad.getId());
        statement.executeUpdate();
    }

    @Override
    public Object getAdById(long id) throws SQLException {
        String query = "SELECT * FROM ads WHERE id = ?";
        PreparedStatement ps;
        ps = connection.prepareStatement(query);
        ps.setLong(1, id);
        ResultSet rs = ps.executeQuery();
        Ad ad = null;
        while (rs.next()) {
            ad = new Ad(
                    rs.getLong("id"),
                    rs.getLong("user_id"),
                    rs.getString("name"),
                    rs.getString("address"),
                    rs.getString("website"),
                    rs.getString("phone"),
                    rs.getString("image"),
                    rs.getString("type")
            );
        }
        return ad;
    }

    @Override
    public List<Ad> filterAds(String search) {
        PreparedStatement stmt = null;
        try {
            String sql = "SELECT * FROM ads WHERE type LIKE ?";
            String wildcards = "%" + search + "%";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, wildcards);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error searching ads.", e);
        }
    }

    @Override
    public List<Ad> searchAds(String search) {
        PreparedStatement stmt = null;
        try {
            String sql = "SELECT * FROM ads WHERE name LIKE ?";
            String wildcards = "%" + search + "%";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, wildcards);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error searching ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO keglister_db.ads(user_id, name, address, website, phone, image, type) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getName());
            stmt.setString(3, ad.getAddress());
            stmt.setString(4, ad.getWebsite());
            stmt.setString(5, ad.getPhone());
            stmt.setString(6, ad.getImage());
            stmt.setString(7, ad.getType());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }


    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("name"),
                rs.getString("address"),
                rs.getString("website"),
                rs.getString("phone"),
                rs.getString("image"),
                rs.getString("type")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) {
        try {
            List<Ad> ads = new ArrayList<>();
            while (rs.next()) {
                ads.add(extractAd(rs));
            }
            return ads;
        }catch(SQLException e){
            throw new RuntimeException("Error creating ad", e);
        }
    }
}
