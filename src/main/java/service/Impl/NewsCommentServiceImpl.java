package service.Impl;

import dao.NewsCommentMapper;
import entity.NewsComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.NewsCommentService;

import java.util.Date;
import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-05-27-14:04
 */
@Service("newsCommentService")
public class NewsCommentServiceImpl implements NewsCommentService {
    @Autowired
    private NewsCommentMapper newsCommentMapper;

    @Override
    public void add(NewsComment newsComment) {
        newsComment.setDate(new Date());
        newsCommentMapper.insert(newsComment);
    }

    @Override
    public void edit(NewsComment newsComment) {
        newsCommentMapper.update(newsComment);
    }

    @Override
    public void remove(Integer commentid) {
        newsCommentMapper.delete(commentid);
    }

    @Override
    public List<NewsComment> getAll() {
        return newsCommentMapper.selectAll();
    }

    @Override
    public List<NewsComment> getById(Integer newsid) {
        return newsCommentMapper.selectById(newsid);
    }

    @Override
    public List<NewsComment> getByiscomment(Integer iscomment) {
        return newsCommentMapper.selectByiscomment(iscomment);
    }

    @Override
    public NewsComment getByCid(Integer commentid) {
        return newsCommentMapper.selectByCid(commentid);
    }


}
