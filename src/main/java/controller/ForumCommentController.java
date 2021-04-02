package controller;

import entity.ForumComment;
import entity.NewsComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.ForumCommentService;

import java.util.Map;

/**
 * @author lx
 * @create_TIME 2020-05-27-11:00
 */
@Controller("forumCommentController")
@RequestMapping("/forumComment")
public class ForumCommentController {

    @Autowired
    private ForumCommentService service;

    @RequestMapping("/list")
    public String list(Map<String, Object> map) {
        map.put("list", service.getAll());
        return "forumcomment_list";
    }

    @RequestMapping("/to_add")
    public String toAdd(Map<String, Object> map) {
        map.put("comment", new ForumComment());
        return "forumcomment_add";
    }

    @RequestMapping("/add")
    public String add(ForumComment comment) {
        service.add(comment);
        return "redirect:list";
    }

    @RequestMapping("/to_add_self")
    public String toAddSelf(Map<String, Object> map) {
        map.put("comment", new ForumComment());
        return "forumcomment_add_self";
    }

    @RequestMapping("/addself")
    public String addself(ForumComment comment) {
        service.add(comment);
        return "redirect:/forum/to_detail?forumid=" + comment.getForumid();
    }

    @RequestMapping(value = "/remove")
    public String remove(Integer commentid) {
        service.remove(commentid);
        return "redirect:list";
    }

    @RequestMapping("/to_update")
    public String toUpdate(Integer commentid, Map<String, Object> map) {
        map.put("comment", service.getByCid(commentid));
        return "forumcomment_update";
    }

    @RequestMapping("/update")
    public String update(ForumComment comment) {
        service.edit(comment);
        return "redirect:list";
    }
}
