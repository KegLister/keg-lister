package keglister.models;

public class Ad {
    private long id;
    private long userId;
    private String name;
    private String address;
    private String website;
    private String phone;
    private String image;
    private String type;

    public Ad(long id, String name, String address) {
        this.id = id;
        this.name = name;
        this.address = address;
    }

    public Ad(long id, long user_id, String name, String address) {
        this.id = id;
        this.userId = user_id;
        this.name = name;
        this.address = address;
    }

    public Ad(long userId, String name, String address, String website, String phone, String image, String type) {
        this.userId = userId;
        this.name = name;
        this.address = address;
        this.website = website;
        this.phone = phone;
        this.image = image;
        this.type = type;
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

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
