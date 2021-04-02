package service.Impl;


import dao.EquipmentDao;
import entity.Equipment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.EquipmentService;

import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-15-16:48
 */
@Service("equipmentService")
public class EquipmentServiceImpl implements EquipmentService {

    @Autowired
    private EquipmentDao equipmentDao;

    public void add(Equipment equipment) {
        equipmentDao.insert(equipment);
    }

    public void edit(Equipment equipment) {
        equipmentDao.update(equipment);
    }

    public void remove(Integer equid) {
equipmentDao.delete(equid);
    }

    public Equipment getById(Integer equid) {
        return equipmentDao.selectById(equid);
    }

    @Override
    public List<Equipment> getByCategory(String category) {
        return equipmentDao.selectByCategory(category);
    }

    public Equipment getByName(String equname) {
        return equipmentDao.selectByName(equname);
    }

    public List<Equipment> getAll() {
        return equipmentDao.selectAll();
    }

    @Override
    public List<Equipment> serach() {
        return null;
    }
}
