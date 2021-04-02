package service;
import entity.EquComment;
import entity.ForumComment;

import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-05-28-16:10
 */
public interface EquCommentService {
    void add(EquComment comment);

    void edit(EquComment comment);

    void remove(Integer commentid);


    List<EquComment> getAll();

    List<EquComment> getById(Integer equid);

    List<EquComment> getByiscomment(Integer iscomment);

    EquComment getByCid(Integer commentid);
}
