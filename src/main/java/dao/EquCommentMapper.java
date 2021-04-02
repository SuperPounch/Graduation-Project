package dao;

import entity.EquComment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EquCommentMapper {
    void insert(EquComment comment);

    void update(EquComment comment);

    void delete(@Param("commentid") Integer commentid);

    List<EquComment> selectById(Integer equid);

    List<EquComment> selectAll();

    EquComment selectByCid(Integer commentid);

    List<EquComment> selectByiscomment(Integer iscomment);
}