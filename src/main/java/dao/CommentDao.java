package dao;

import entity.Comment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-22-10:29
 */
@Repository
public interface CommentDao {
    void insert(Comment comment);
    void update(Comment comment);
    void delete(@Param("commentid") Integer commentid);
    Comment selectById(Integer commentid);
    public List<Comment> selectAll();
}
