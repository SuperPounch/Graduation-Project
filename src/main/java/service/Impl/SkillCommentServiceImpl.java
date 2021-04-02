package service.Impl;

import dao.NewsCommentMapper;
import dao.SkillCommentMapper;
import entity.NewsComment;
import entity.SkillComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.NewsCommentService;
import service.SkillCommentService;

import java.util.Date;
import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-05-27-14:04
 */
@Service("skillCommentService")
public class SkillCommentServiceImpl implements SkillCommentService {
    @Autowired
    private SkillCommentMapper skillCommentMapper;

    @Override
    public void add(SkillComment skillComment) {
        skillComment.setDate(new Date());
        skillCommentMapper.insert(skillComment);
    }

    @Override
    public void edit(SkillComment skillComment) {
        skillCommentMapper.update(skillComment);
    }

    @Override
    public void remove(Integer commentid) {
        skillCommentMapper.delete(commentid);
    }

    @Override
    public List<SkillComment> getAll() {
        return skillCommentMapper.selectAll();
    }

    @Override
    public List<SkillComment> getById(Integer skillid) {
        return skillCommentMapper.selectById(skillid);
    }

    @Override
    public List<SkillComment> getByiscomment(Integer iscomment) {
        return skillCommentMapper.selectByiscomment(iscomment);
    }

    @Override
    public SkillComment getByCid(Integer commentid) {
        return skillCommentMapper.selectByCid(commentid);
    }
}
