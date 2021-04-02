package service;
import entity.NewsComment;
import java.util.List;
/**
 * @author lx
 * @create_TIME 2020-05-27-14:03
 */
public interface NewsCommentService {
    void add(NewsComment newsComment);

    void edit(NewsComment newsComment);

    void remove(Integer commentid);

    List<NewsComment> getAll();

    List<NewsComment> getById(Integer newsid);

    List<NewsComment> getByiscomment(Integer iscomment);

    NewsComment getByCid(Integer commentid);


}
