package service;


import entity.Skill;

import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-15-16:44
 */
public interface SkillService {
    void add(Skill skill);
    void edit(Skill skill);
    void remove(Integer skillid);
    Skill getById(Integer skillid);
    Skill getByTitle(String title);
    List<Skill> getByCategory(String category);
    List<Skill> getAll();
}
