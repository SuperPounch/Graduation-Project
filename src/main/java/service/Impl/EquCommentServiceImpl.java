package service.Impl;

import dao.EquCommentMapper;
import entity.EquComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.EquCommentService;

import java.util.Date;
import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-06-06-0:02
 */
@Service("equCommentService")
public class EquCommentServiceImpl implements EquCommentService {
    @Autowired
    private EquCommentMapper mapper;

    @Override
    public void add(EquComment comment) {
        comment.setDate(new Date());
        mapper.insert(comment);
    }

    @Override
    public void edit(EquComment comment) {
        mapper.update(comment);
    }

    @Override
    public void remove(Integer commentid) {
        mapper.delete(commentid);
    }

    @Override
    public List<EquComment> getAll() {
        return mapper.selectAll();
    }

    @Override
    public List<EquComment> getById(Integer equid) {
        return mapper.selectById(equid);
    }

    @Override
    public List<EquComment> getByiscomment(Integer iscomment) {
        return mapper.selectByiscomment(iscomment);
    }

    @Override
    public EquComment getByCid(Integer commentid) {
        return mapper.selectByCid(commentid);
    }
}
