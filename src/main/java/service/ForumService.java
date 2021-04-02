package service;

import entity.Forum;

import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-15-16:44
 */
public interface ForumService {
    void add(Forum forum);
    void edit(Forum forum);
    void remove(Integer forumid);
    Forum getById(Integer forumid);
    Forum getByTitle(String title);
    List<Forum> getAll();
    List<Forum> getByCategory(String category);
}
