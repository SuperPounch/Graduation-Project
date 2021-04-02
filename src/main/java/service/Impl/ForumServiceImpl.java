package service.Impl;


import dao.ForumDao;
import entity.Forum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.ForumService;

import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-15-16:48
 */
@Service("forumService")
public class ForumServiceImpl implements ForumService {

    @Autowired
    private ForumDao forumDao;

    public void add(Forum forum) { forumDao.insert(forum); }

    public void edit(Forum forum) { forumDao.update(forum);}

    public void remove(Integer forumid) { forumDao.delete(forumid); }

    public Forum getById(Integer forumid) { return forumDao.selectById(forumid); }

    public Forum getByTitle(String title) { return forumDao.selectByTitle(title); }

    public List<Forum> getAll() { return forumDao.selectAll(); }

    public List<Forum> getByCategory(String category) {
        return forumDao.selectByCategory(category);
    }
}
