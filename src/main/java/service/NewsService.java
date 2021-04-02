package service;



import entity.News;

import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-15-16:44
 */
public interface NewsService {
    void add(News news);
    void edit(News news);
    void remove(Integer newsid);
    News getById(Integer newsid);
    List<News> getByTitle(String title);
    List<News> getByCategory(String category);
    List<News> getAll();
}
