package controller;

import entity.Skill;
import global.Contant;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import service.SkillCommentService;
import service.SkillService;

import java.io.File;
import java.io.IOException;
import java.util.Map;

@Controller("skillController")
@RequestMapping("/skill")
public class SkillController {
    String BasePath = "D:\\badminton_1\\src\\main\\webapp\\assets\\img\\avatars\\";
    @Autowired
    private SkillService skillService;
    @Autowired
    private SkillCommentService skillCommentService;

    @RequestMapping("/list")
    public String list(Map<String, Object> map) {
        map.put("sc",Contant.getSkill());
        map.put("list", skillService.getAll());
        return "skill_list";
    }
    @RequestMapping("/to_category")
    public String toCategory(@RequestParam String category, Map<String, Object> map) {
        map.put("sc",Contant.getSkill());
        map.put("skill", skillService.getByCategory(category));
        return "skill_category";
    }
    @RequestMapping("/to_detail")
    public String toDetail(Integer skillid, Map<String, Object> map) {
        map.put("comment",skillCommentService.getById(skillid));
        map.put("sc",Contant.getSkill());
        map.put("skill", skillService.getById(skillid));
        return "skill_detail";
    }

    @RequestMapping("/to_add")
    public String toAdd(Map<String, Object> map) {
        map.put("category", Contant.getNews());
        map.put("skill", new Skill());
        return "skill_add";
    }

    @RequestMapping("/add")
    public String add(Skill skill) {
        skillService.add(skill);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_update")
    public String toUpdate(Integer skillid, Map<String, Object> map) {
        map.put("category", Contant.getNews());
        map.put("skill", skillService.getById(skillid));
        return "skill_update";
    }

    @RequestMapping("/update")
    public String update(MultipartFile[] file, Skill skill) throws IOException {
        int i = 1;
        if (file != null) {
            File file1 = new File(BasePath + skill.getSkillid());
            file1.mkdir();
            System.out.println(file1 == null);
            System.out.println(file1.getAbsolutePath());
            for (MultipartFile f : file) {
                if (!f.isEmpty()) {
                    String name = "" + skill.getSkillid() + i;
                    String ext = FilenameUtils.getExtension(f.getOriginalFilename());
                    f.transferTo(new File(BasePath + skill.getSkillid() + "/" + name + "." + ext));
                    i++;
                }
            }
        }
        skillService.edit(skill);
        return "redirect:list";
    }

    @RequestMapping(value = "/remove")
    public String remove(Integer skillid) {
        skillService.remove(skillid);
        return "redirect:list";
    }
}
