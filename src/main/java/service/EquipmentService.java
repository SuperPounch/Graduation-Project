package service;

import entity.Equipment;

import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-15-16:44
 */
public interface EquipmentService {
    void add(Equipment equipment);
    void edit(Equipment equipment);
    void remove(Integer equid);
    Equipment getById(Integer equid);
    List<Equipment> getByCategory(String category);
    List<Equipment> getAll();
    List<Equipment> serach();
}
