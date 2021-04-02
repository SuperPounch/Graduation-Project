package service.Impl;

import dao.UserDao;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.UserService;

import java.util.Date;
import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-07-11:58
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    public void add(User user) {
        System.out.println("userDao.insert");
        userDao.insert(user);
    }

    public void remove(Integer uid) {
        userDao.delete(uid);
    }

    public void edit(User user) {
        userDao.update(user);
    }

    public User getById(Integer uid) { return userDao.selectById(uid); }
    public User getByUserName(String  username) { return userDao.selectByUserName(username); }

    public List<User> getAll() {
        return userDao.selectAll();
    }
}
