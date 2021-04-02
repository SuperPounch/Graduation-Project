package dao;


import entity.News;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-22-10:29
 */
@Repository
public interface NewsDao {
    void insert(News news);
    void update(News news);
    void delete(@Param("newsid") Integer newsid);
    News selectById(Integer newsid);
   List<News>  selectByTitle(String title);
    List<News> selectByCategory(String category);
    public List<News> selectAll();
}
