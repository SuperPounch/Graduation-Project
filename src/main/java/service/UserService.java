package service;


import entity.User;

import java.util.List;

public interface UserService {
    void add(User user);
    void remove(Integer uid);
    void edit(User user);
    User getById(Integer uid);
    User getByUserName(String username);
    List<User> getAll();
}
