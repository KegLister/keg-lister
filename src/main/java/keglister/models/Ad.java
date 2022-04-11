package keglister.models;

public class Ad {
    private long id;
    private long userId;
    private long infoId;
    private String name;

    public Ad(long userId, String name, long infoId) {
        this.userId = userId;
        this.name = name;
        this.infoId = infoId;
    }

    public Ad(long id, long user_id, String title, String description) {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public long getInfoId() {
        return infoId;
    }

    public void setInfoId(long infoId) {
        this.infoId = infoId;
    }
}