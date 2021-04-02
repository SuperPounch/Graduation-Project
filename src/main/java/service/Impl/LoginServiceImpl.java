package service.Impl;


import dao.UserDao;
import entity.User;
import javafx.scene.control.Alert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.LoginService;
import service.UserService;

import javax.sound.midi.Soundbank;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
    @Autowired
    private UserDao userDao;
    @Autowired
    private UserService userService;

    public User login(String username, String password) {
        User user = userDao.selectByUserName(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }

    public User login(Integer uid, String password) {
        User user = userDao.selectById(uid);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }

    public void changePassword(User user) {
        userDao.update(user);
    }

    @Override
    public void regist(User user) {//注册
        System.out.println("loginService--regist");
        User user1 = userService.getByUserName(user.getUsername());//查看同名是否存在
        if (user1 == null) {//不同名
            System.out.println("正在注册");
            user.setLevel(0);
            userService.add(user);
            System.out.println("注册成功");
        }else{//不为空
            System.out.println("不可以注册，出现同名");
        }
    }
}
