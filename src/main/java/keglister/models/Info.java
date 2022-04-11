package keglister.models;

public class Info {
    private long id;
    private String address;
    private String city;
    private String state;
    private String zip;
    private String website;

    public Info(long id, String address, String city, String state, String zip, String website){
        this.id = id;
        this.address = address;
        this.city = city;
        this.state = state;
        this.zip = zip;
        this.website = website;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }
}
