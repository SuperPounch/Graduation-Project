package controller;


import entity.ForumComment;
import entity.NewsComment;
import entity.SkillComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.SkillCommentService;

import java.util.Map;

/**
 * @author lx
 * @create_TIME 2020-05-27-11:00
 */
@Controller("skillCommentController")
@RequestMapping("/skillComment")
public class SkillCommentController {
    @Autowired
    private SkillCommentService service;

    @RequestMapping("/list")
    public String list(Map<String, Object> map) {
        map.put("list", service.getAll());
        return "skillcomment_list";
    }

    @RequestMapping("/to_add")
    public String toAdd(Map<String, Object> map) {
        map.put("comment", new SkillComment());
        return "skillcomment_add";
    }

    @RequestMapping("/add")
    public String add(SkillComment comment) {
        service.add(comment);
        return "redirect:list";
    }

    @RequestMapping("/to_add_self")
    public String toAddSelf(Map<String, Object> map) {
        map.put("comment", new SkillComment());
        return "skillcomment_add_self";
    }

    @RequestMapping("/addself")
    public String addself(SkillComment comment) {
        service.add(comment);
        return "redirect:/skill/to_detail?skillid=" + comment.getSkillid();
    }

    @RequestMapping(value = "/remove")
    public String remove(Integer commentid) {
        service.remove(commentid);
        return "redirect:list";
    }

    @RequestMapping("/to_update")
    public String toUpdate(Integer commentid, Map<String, Object> map) {
        map.put("comment", service.getByCid(commentid));
        return "skillcomment_update";
    }

    @RequestMapping("/update")
    public String update(SkillComment comment) {
        service.edit(comment);
        return "redirect:list";
    }
}
