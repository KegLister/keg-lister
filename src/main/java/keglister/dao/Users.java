package keglister.dao;

import keglister.models.User;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);

    Long edit(User user);
}

