package keglister.dao;

import keglister.models.Ad;
import keglister.models.User;

import java.sql.SQLException;
import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    //list of ads that match string
    List<Ad> searchAds(String search);

    List<Ad> one(String trimmedQuery);


    List<Ad> adsByUser(User id);

    void delete(long id);

    void edit(Ad ad);

    Object getAdById(long id) throws SQLException;
}
