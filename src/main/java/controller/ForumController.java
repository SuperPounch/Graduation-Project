package controller;


import entity.Forum;
import global.Contant;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import service.ForumCommentService;
import service.ForumService;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Map;

@Controller("forumController")
@RequestMapping("/forum")
public class ForumController {
    String BasePath="D:\\badminton_1\\src\\main\\webapp\\assets\\img\\avatars\\";
    @Autowired
    private ForumService forumService;
    @Autowired
    private ForumCommentService forumCommentService;

    @RequestMapping("/list")
    public String list(Map<String, Object> map) {
        map.put("fc",Contant.getForum());
        map.put("list", forumService.getAll());
        return "forum_list";
    }
    @RequestMapping("/to_category")
    public String toDetail(@RequestParam String category, Map<String, Object> map) {
        System.out.println(category);
        map.put("fc",Contant.getForum());
        map.put("forum", forumService.getByCategory(category));
        return "forum_category";
    }

    @RequestMapping("/to_detail")
    public String toDetail(Integer forumid,Map<String, Object> map) {
        map.put("fc",Contant.getForum());
        map.put("forum", forumService.getById(forumid));
        map.put("comment",forumCommentService.getById(forumid));
        return "forum_detail";
    }
    @RequestMapping("/to_add")
    public String toAdd(Map<String, Object> map) {
        map.put("category", Contant.getForum());
        map.put("forum", new Forum());
        return "forum_add";
    }

    @RequestMapping("/add")
    public String add(Forum forum) {
        System.out.println(forum);
        forumService.add(forum);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_update")
    public String toUpdate(Integer forumid, Map<String, Object> map) {
        map.put("category", Contant.getForum());
        map.put("forum", forumService.getById(forumid));
        return "forum_update";
    }

    @RequestMapping("/update")
    public String update(MultipartFile[] file,Forum forum) throws IOException {
        int i = 1;
        if(file != null) {
            File file1 = new File(BasePath + forum.getForumid());
            file1.mkdir();
            System.out.println(file1 == null);
            System.out.println(file1.getAbsolutePath());
            for (MultipartFile f : file) {
                if (!f.isEmpty()) {
                    String name = "" + forum.getForumid() + i;
                    String ext = FilenameUtils.getExtension(f.getOriginalFilename());
                    f.transferTo(new File(BasePath + forum.getForumid() + "/" + name + "." + ext));
                    i++;
                }
            }
        }
        forumService.edit(forum);
        return "redirect:list";
    }

    @RequestMapping(value = "/remove")
    public String remove(Integer forumid) {
        forumService.remove(forumid);
        return "redirect:list";
    }
}
