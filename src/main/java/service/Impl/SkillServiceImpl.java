package service.Impl;


import dao.SkillDao;
import entity.Skill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.SkillService;

import java.util.List;

@Service("skillService")
public class SkillServiceImpl implements SkillService {

    @Autowired
    private SkillDao skillDao;

    public void add(Skill skill) { skillDao.insert(skill); }

    public void edit(Skill skill) { skillDao.update(skill); }

    public void remove(Integer skillid) { skillDao.delete(skillid); }

    public Skill getById(Integer skillid) {
        return skillDao.selectById(skillid);
    }

    public Skill getByTitle(String title) {
        return skillDao.selectByTitle(title);
    }

    @Override
    public List<Skill> getByCategory(String category) {
        return skillDao.selectByCategory(category);
    }

    public List<Skill> getAll() {
        return skillDao.selectAll();
    }
}
