package dao;

import entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-07-11:06
 */
@Repository
public interface UserDao {
    void insert(User user);
    void delete(@Param("uid") Integer uid);
    void update(User user);
    User selectById(Integer uid);
    User selectByUserName(String username);
    List<User> selectAll();
}

