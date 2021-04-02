package dao;

import entity.NewsComment;
import entity.SkillComment;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SkillCommentMapper {
    void insert(SkillComment skillComment);
    void update(SkillComment skillComment);
    void delete(@Param("commentid") Integer commentid);
    List<SkillComment> selectById(Integer skillid);
    List<SkillComment> selectAll();
   SkillComment selectByCid(Integer commentid);
    List<SkillComment> selectByiscomment(Integer iscomment);
   }