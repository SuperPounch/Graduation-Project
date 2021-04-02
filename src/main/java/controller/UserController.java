package controller;


import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.UserService;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * @author lx
 * @create_TIME 2020-04-07-12:05
 */
@Controller("userController")
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/list")
    public String list(Map<String,Object> map){
        map.put("list",userService.getAll());
        return "user_list";
    }
    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("user",new User());
        return "user_add";
    }
    @RequestMapping("/add")
    public String add(User user){
        userService.add(user);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_update")
    public String toUpdate(Integer uid,Map<String,Object> map){
        map.put("user",userService.getById(uid));
        return "user_update";
    }

    @RequestMapping("/update")
    public String update(User user){
        userService.edit(user);
        return "redirect:list";
    }

    @RequestMapping("/to_update_self")
    public String toUpdateSelf(Integer uid,Map<String,Object> map){
        map.put("user",userService.getById(uid));
        return "user_update_self";
    }
    @RequestMapping("/update_self")
    public String updateself(User user, HttpSession session){
        userService.edit(user);
        session.setAttribute("user",user);
        return "redirect:/self";
    }
    @RequestMapping(value = "/remove")
    public String remove(Integer uid){
        userService.remove(uid);
        return "redirect:list";
    }
}
