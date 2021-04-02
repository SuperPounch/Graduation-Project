package service;

import entity.NewsComment;
import entity.SkillComment;
import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-05-28-16:11
 */
public interface SkillCommentService {
    void add(SkillComment skillComment);

    void edit(SkillComment skillComment);

    void remove(Integer commentid);


    List<SkillComment> getAll();

    List<SkillComment> getById(Integer newsid);

    List<SkillComment> getByiscomment(Integer iscomment);
   SkillComment getByCid(Integer commentid);
}
