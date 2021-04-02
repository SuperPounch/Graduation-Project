package dao;


import entity.Equipment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface EquipmentDao {
    void insert(Equipment equipment);
    void update(Equipment equipment);
    void delete(@Param("equid") Integer equid);
    Equipment selectById(Integer equid);
    Equipment selectByName(String equname);
    List<Equipment> selectByCategory(String category);
    public List<Equipment> selectAll();
}
