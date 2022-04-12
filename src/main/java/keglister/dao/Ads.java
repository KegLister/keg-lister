package keglister.dao;

import keglister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    //list of ads that match string
    List<Ad> searchAds(String search);
    //single ad object from id
    Ad singleAd(Long ad);
}
