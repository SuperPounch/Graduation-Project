package dao;



import entity.Skill;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-22-10:29
 */
@Repository
public interface SkillDao {
    void insert(Skill skill);
    void update(Skill skill);
    void delete(@Param("skillid") Integer skillid);
    Skill selectById(Integer skillid);
    Skill selectByTitle(String title);
    public List<Skill> selectAll();
    public List<Skill> selectByCategory(String category);
}
