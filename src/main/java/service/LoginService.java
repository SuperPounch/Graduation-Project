package service;

import entity.User;

import javax.jws.soap.SOAPBinding;

/**
 * @author lx
 * @create_TIME 2020-04-30-16:41
 */
public interface LoginService {
    User login(String username, String password);
    void changePassword(User user);
    void regist(User user);
}
