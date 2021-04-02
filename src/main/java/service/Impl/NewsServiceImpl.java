package service.Impl;


import dao.NewsDao;
import entity.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.NewsService;

import java.util.List;

@Service("newsService")
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsDao newsDao;

    public void add(News news) {
        newsDao.insert(news);
    }

    public void edit(News news) {
        newsDao.update(news);
    }

    public void remove(Integer newsid) {
        newsDao.delete(newsid);
    }

    public News getById(Integer newsid) {
        return newsDao.selectById(newsid);
    }

    public List<News> getByTitle(String title) {
        return newsDao.selectByTitle(title);
    }

    public List<News> getByCategory(String category) {
        return newsDao.selectByCategory(category);
    }

    public List<News> getAll() {
        return newsDao.selectAll();
    }
}
