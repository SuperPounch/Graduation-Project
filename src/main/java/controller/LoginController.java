package controller;

import entity.User;
import global.Contant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * @author lx
 * @create_TIME 2020-04-30-17:31
 */
@Controller("loginController")
public class LoginController {
    @Autowired
    private LoginService loginService;
    @Autowired
    private  UserService userService;
    @Autowired
    private NewsService newsService;
    @Autowired
    private SkillService skillService;
    @Autowired
    private EquipmentService equipmentService;
    @Autowired
    private ForumService forumService;

    @RequestMapping("/to_login")
    public String toLogin() {
        return "login2";
    }

    @RequestMapping("/home")
    public String home(Map<String, Object> map) {
        map.put("nc",Contant.getNews());
        map.put("sc",Contant.getSkill());
        map.put("fc",Contant.getForum());
        map.put("ec",Contant.getCategory());
        map.put("news", newsService.getAll());
        map.put("skill", skillService.getAll());
        map.put("forum", forumService.getAll());
        map.put("equ", equipmentService.getAll());
        return "home";
    }

    @RequestMapping("/regist")
    public String regist(HttpSession session, User user, @RequestParam String regpass2) {
        System.out.println(user.getUsername() + user.getPassword());
        if (user.getPassword().equals(regpass2)) {
            System.out.println("密码匹配，进入loginService的注册");
            loginService.regist(user);
        } else {
            System.out.println("密码不匹配");
        }
        return "redirect:to_login";
    }

    @RequestMapping("/login")
    public String login(HttpSession session, @RequestParam String login_username, @RequestParam String login_password) {
        User user = loginService.login(login_username, login_password);
        if (login_username == null || user == null) {
            return "redirect:to_login";
        }
        session.setAttribute("user", user);
        if (user.getLevel() == 1 || user.getLevel() == 0) {
            return "redirect:home";
        }
        if (user.getLevel() == 2|| user.getLevel()==3) {
            System.out.println("跳转到self");
            return "redirect:self";
        }
        System.out.println("等级非1、2");
        return "redirect:to_login";
    }

    @RequestMapping("/self")
    public String self() {
        return "self";
    }

    @RequestMapping("/quit")
    public String quit(HttpSession session) {
        session.setAttribute("user", null);
        return "redirect:to_login";
    }

    @RequestMapping("/to_change_password")
    public String toChangePassword() {
        return "change_password";
    }

    @RequestMapping("/change_password")
    public String changePassword(HttpSession session, @RequestParam String old, @RequestParam String new1, @RequestParam String new2) {
        User user = (User) session.getAttribute("user");
        if (user.getPassword().equals(old)) {
            if (new1.equals(new2)) {
                user.setPassword(new1);
                loginService.changePassword(user);
                return "redirect:to_login";
            }
            else {
                System.out.println("密码不匹配");
            }
        }
        return "redirect:to_change_password";
    }
}
