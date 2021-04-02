package service;
import entity.ForumComment;
import entity.NewsComment;

import java.util.List;
/**
 * @author lx
 * @create_TIME 2020-05-28-16:10
 */
public interface ForumCommentService {
    void add(ForumComment forumComment);

    void edit(ForumComment forumComment);

    void remove(Integer commentid);


    List<ForumComment> getAll();

    List<ForumComment> getById(Integer newsid);

    List<ForumComment> getByiscomment(Integer iscomment);

   ForumComment getByCid(Integer commentid);
}
