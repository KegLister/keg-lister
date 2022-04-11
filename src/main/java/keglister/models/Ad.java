package keglister.models;

public class Ad {
    private long id;
    private long userId;
    private String name;
    private String address;
<<<<<<< HEAD
    private String website;
    private String image;
    private String food_served;

    public Ad(long userId, String name, String address, String website, String image, String food_served) {
        this.userId = userId;
        this.name = name;
        this.address = address;
        this.website = website;
        this.image = image;
        this.food_served = food_served;
    }

    public Ad(long id, long user_id, String name, String address) {
        this.id = id;
        this.userId = user_id;
        this.name = name;
        this.address = address;
    }

    public Ad(long id, String name, String address) {
        this.id = id;
        this.name = name;
        this.address = address;
=======
    private String city;
    private String state;
    private String zip;

    public Ad(long userId, String name, String address, String city, String state, String zip) {
        this.userId = userId;
        this.name = name;
        this.address = address;
        this.city = city;
        this.state = state;
        this.zip = zip;
    }

    public Ad(long id, long user_id, String title, String description) {
>>>>>>> 8272e3e69e53c58c3033955109c2c9a74a47933e
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

<<<<<<< HEAD
    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getFood_served() {
        return food_served;
    }

    public void setFood_served(String food_served) {
        this.food_served = food_served;
=======
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
>>>>>>> 8272e3e69e53c58c3033955109c2c9a74a47933e
    }
}
