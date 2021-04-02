package dao;


import entity.Forum;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-22-10:29
 */
@Repository
public interface ForumDao {
    void insert(Forum forum);
    void update(Forum forum);
    void delete(@Param("forumid") Integer forumid);
    Forum selectById(Integer forumid);
    Forum selectByTitle(String title);
    public List<Forum> selectAll();
    public List<Forum> selectByCategory(String category);
}
