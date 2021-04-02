package controller;

import entity.News;
import global.Contant;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import service.NewsCommentService;
import service.NewsService;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/**
 * @author lx
 * @create_TIME 2020-04-15-17:02
 */
@Controller("newsController")
@RequestMapping("/news")
public class NewsController {
    String BasePath="D:\\badminton_1\\src\\main\\webapp\\assets\\img\\avatars\\";
    @Autowired
    private NewsService newsService;
    @Autowired
    private NewsCommentService newsCommentService;

    @RequestMapping("/list")
    public String list(Map<String, Object> map) {
        map.put("nc",Contant.getNews());
        map.put("list", newsService.getAll());
        return "news_list";
    }
    @RequestMapping("/to_detail")
    public String toDetail(Integer newsid, Map<String, Object> map) {
        map.put("nc",Contant.getNews());
        map.put("comment",newsCommentService.getById(newsid));
        map.put("news", newsService.getById(newsid));
        return "news_detail";
    }
    @RequestMapping("/to_category")
    public String toCategory(@RequestParam  String category, Map<String, Object> map) {
        map.put("nc",Contant.getNews());
        map.put("news", newsService.getByCategory(category));
        return "news_category";
    }
    @RequestMapping("/to_search")
    public String toSearch(@RequestParam(name = "key",required = false)  String createdate, Map<String, Object> map) {
        map.put("nc",Contant.getNews());
        map.put("news", newsService.getByTitle(createdate));
        System.out.println(createdate);
        return "news_search";
    }

    @RequestMapping("/to_add")
    public String toAdd(Map<String, Object> map) {
        map.put("category", Contant.getNews());
        map.put("news", new News());
        return "news_add";
    }

    @RequestMapping("/add")
    public String add(News news) {
        newsService.add(news);
        return "redirect:list";
    }

    @RequestMapping("/to_update")
    public String toUpdate(Integer newsid, Map<String, Object> map) {
        map.put("category", Contant.getNews());
        map.put("news", newsService.getById(newsid));
        return "news_update";
    }

    @RequestMapping("/update")
    public String update(MultipartFile[] file, News news) throws IOException {
        int i = 1;
        if(file != null) {
            File file1 = new File(BasePath + news.getNewsid());
            file1.mkdir();
            System.out.println(file1 == null);
            System.out.println(file1.getAbsolutePath());
            for (MultipartFile f : file) {
                if (!f.isEmpty()) {
                    String name = "" + news.getNewsid() + i;
                    String ext = FilenameUtils.getExtension(f.getOriginalFilename());
                    f.transferTo(new File(BasePath + news.getNewsid() + "/" + name + "." + ext));
                    i++;
                }
            }
        }
        newsService.edit(news);
        return "redirect:list";
    }

    @RequestMapping("/remove")
    public String remove(Integer newsid) {
        newsService.remove(newsid);
        return "redirect:list";
    }
}
