package controller;

import entity.NewsComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.NewsCommentService;

import java.util.Map;

/**
 * @author lx
 * @create_TIME 2020-05-27-11:00
 */
@Controller("newsCommentController")
@RequestMapping("/newsComment")
public class NewsCommentController {
    @Autowired
    private NewsCommentService service;

    @RequestMapping("/list")
    public String list(Map<String, Object> map) {
        map.put("list", service.getAll());
        return "newscomment_list";
    }

    @RequestMapping("/to_add")
    public String toAdd(Map<String, Object> map) {
        map.put("comment", new NewsComment());
        return "newscomment_add";
    }

    @RequestMapping("/add")
    public String add(NewsComment comment) {
        service.add(comment);
        return "redirect:list";
    }

    @RequestMapping("/to_add_self")
    public String toAddSelf(Map<String, Object> map) {
        map.put("comment", new NewsComment());
        return "newscomment_add_self";
    }

    @RequestMapping("/addself")
    public String addself(NewsComment comment) {
        service.add(comment);
        return "redirect:/news/to_detail?newsid=" + comment.getNewsid();
    }

    @RequestMapping(value = "/remove")
    public String remove(Integer commentid) {
        service.remove(commentid);
        return "redirect:list";
    }

    @RequestMapping("/to_update")
    public String toUpdate(Integer commentid, Map<String, Object> map) {
        map.put("comment", service.getByCid(commentid));
        return "newscomment_update";
    }

    @RequestMapping("/update")
    public String update(NewsComment comment) {
        service.edit(comment);
        return "redirect:list";
    }
}
