package dao;
import entity.NewsComment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface NewsCommentMapper {
    void insert(NewsComment newsComment);
    void update(NewsComment newsComment);
    void delete(@Param("commentid") Integer commentid);
    List<NewsComment> selectById(Integer newsid);
    List<NewsComment> selectAll();
    NewsComment selectByCid(Integer commentid);
    List<NewsComment> selectByiscomment(Integer iscomment);
   }