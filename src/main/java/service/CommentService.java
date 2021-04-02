package service;


import entity.Comment;

import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-15-16:44
 */
public interface CommentService {
    void add(Comment comment);
    void edit(Comment comment);
    void remove(Integer commentid);
    Comment getById(Integer commentid);
    List<Comment> getAll();
}
