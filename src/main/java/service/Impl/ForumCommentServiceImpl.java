package service.Impl;

import dao.ForumCommentMapper;
import dao.NewsCommentMapper;
import entity.ForumComment;
import entity.NewsComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.ForumCommentService;
import service.NewsCommentService;

import java.util.Date;
import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-05-27-14:04
 */
@Service("forumCommentService")
public class ForumCommentServiceImpl implements ForumCommentService {
    @Autowired
    private ForumCommentMapper forumCommentMapper;

    @Override
    public void add(ForumComment forumComment) {
        forumComment.setDate(new Date());
        forumCommentMapper.insert(forumComment);
    }

    @Override
    public void edit(ForumComment forumComment) {
        forumCommentMapper.update(forumComment);
    }

    @Override
    public void remove(Integer commentid) {
        forumCommentMapper.delete(commentid);
    }

    @Override
    public List<ForumComment> getAll() {
        return forumCommentMapper.selectAll();
    }

    @Override
    public List<ForumComment> getById(Integer forumid) {
        return forumCommentMapper.selectById(forumid);
    }

    @Override
    public List<ForumComment> getByiscomment(Integer iscomment) {
        return forumCommentMapper.selectByiscomment(iscomment);
    }

    @Override
    public ForumComment getByCid(Integer commentid) {
        return forumCommentMapper.selectByCid(commentid);
    }
}
