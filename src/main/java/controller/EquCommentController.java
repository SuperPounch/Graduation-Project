package controller;

import entity.EquComment;
import entity.ForumComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.EquCommentService;
import java.util.Map;

/**
 * @author lx
 * @create_TIME 2020-05-27-11:00
 */
@Controller("equCommentController")
@RequestMapping("/equComment")
public class EquCommentController {

    @Autowired
    private EquCommentService service;

    @RequestMapping("/list")
    public String list(Map<String, Object> map) {
        map.put("list", service.getAll());
        return "equcomment_list";
    }

/*    @RequestMapping("/to_add")
    public String toAdd(Map<String, Object> map) {
        map.put("comment", new ForumComment());
        return "equcomment_add";
    }

    @RequestMapping("/add")
    public String add(EquComment comment) {
        service.add(comment);
        return "redirect:list";
    }

    @RequestMapping("/to_add_self")
    public String toAddSelf(Map<String, Object> map) {
        map.put("comment", new EquComment());
        return "equcomment_add_self";
    }*/

    @RequestMapping("/addself")
    public String addself(EquComment comment) {
        service.add(comment);
        return "redirect:/equipment/to_detail?equid=" + comment.getEquid();
    }

    @RequestMapping(value = "/remove")
    public String remove(Integer commentid) {
        service.remove(commentid);
        return "redirect:list";
    }

/*    @RequestMapping("/to_update")
    public String toUpdate(Integer commentid, Map<String, Object> map) {
        map.put("comment", service.getByCid(commentid));
        return "equcomment_update";
    }

    @RequestMapping("/update")
    public String update(EquComment comment) {
        service.edit(comment);
        return "redirect:list";
    }*/
}
