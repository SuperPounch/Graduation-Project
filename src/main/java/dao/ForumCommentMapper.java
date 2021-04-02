package dao;
import entity.ForumComment;

import java.util.List;

import entity.NewsComment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
@Repository
public interface ForumCommentMapper {
    void insert(ForumComment forumComment);
    void update(ForumComment forumComment);
    void delete(@Param("commentid") Integer commentid);
    List<ForumComment> selectById(Integer forumid);
    List<ForumComment> selectAll();
    ForumComment selectByCid(Integer commentid);
    List<ForumComment> selectByiscomment(Integer iscomment);
    }