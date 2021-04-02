package service.Impl;


import dao.CommentDao;
import entity.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.CommentService;

import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-15-16:48
 */
@Service("commentService")
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;

    public void add(Comment comment) { commentDao.insert(comment); }

    public void edit(Comment comment) { commentDao.update(comment); }

    public void remove(Integer commentid) {
        commentDao.delete(commentid);
    }

    public Comment getById(Integer commentid) {
        return commentDao.selectById(commentid);
    }

    public List<Comment> getAll() {
        return commentDao.selectAll();
    }
}
