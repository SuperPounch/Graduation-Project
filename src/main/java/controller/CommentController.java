package controller;


import entity.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.CommentService;

import java.util.Map;

/**
 * @author lx
 * @create_TIME 2020-04-15-17:02
 */
@Controller("commentController")
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService commentService;

    @RequestMapping("/list")
    public String list(Map<String, Object> map) {
        map.put("list", commentService.getAll());
        return "comment_list";
    }

    @RequestMapping("/to_add")
    public String toAdd(Map<String, Object> map) {
        map.put("comment", new Comment());
        return "comment_add";
    }

    @RequestMapping("/add")
    public String add(Comment comment) {
        commentService.add(comment);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_update")
    public String toUpdate(Integer commentid, Map<String, Object> map) {
        map.put("comment", commentService.getById(commentid));
        return "comment_update";
    }

    @RequestMapping("/update")
    public String update(Comment comment) {
        commentService.edit(comment);
        return "redirect:list";
    }

    @RequestMapping(value = "/remove")
    public String remove(Integer forumid) {
        commentService.remove(forumid);
        return "redirect:list";
    }
}
