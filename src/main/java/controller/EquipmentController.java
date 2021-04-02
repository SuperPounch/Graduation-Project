package controller;


import entity.Equipment;
import global.Contant;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import service.EquipmentService;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * @author lx
 * @create_TIME 2020-04-15-17:02
 */
@Controller("equipmentController")
@RequestMapping("/equipment")
public class EquipmentController {
    String BasePath="D:\\badminton_1\\src\\main\\webapp\\img\\equipment\\";

    @Autowired
    private EquipmentService equipmentService;

    @RequestMapping("/list")
    public  String list(Map<String, Object> map) {
        map.put("ec",Contant.getCategory());
        map.put("list", equipmentService.getAll());
        return "equipment_list";
    }

    @RequestMapping("/to_category")
    public String toCategory(@RequestParam String category, Map<String, Object> map) {
        map.put("ec",Contant.getCategory());
        map.put("equ", equipmentService.getByCategory(category));
        return "equ_category";
    }

    @RequestMapping("/to_detail")
    public String toDetail(Integer equid,Map<String, Object> map) {
        map.put("ec",Contant.getCategory());
        map.put("equ", equipmentService.getById(equid));
        return "equipment_detail";
    }
    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("brand", Contant.getBrand());
        map.put("category", Contant.getCategory());
        map.put("equipment",new Equipment());
        return "equipment_add";
    }
    @RequestMapping("/add")
    public String add(Equipment equipment){
        equipmentService.add(equipment);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_update")
    public String toUpdate(Integer equid, Map<String,Object> map) {
        map.put("brand", Contant.getBrand());
        map.put("category", Contant.getCategory());
        map.put("equipment",equipmentService.getById(equid));
        return "equipment_update";
    }

    @RequestMapping("/update")
    public String update(MultipartFile[] file, Equipment equipment) throws IOException {
       // int i = 1;
        if(file != null) {
            File file1 = new File(BasePath + equipment.getEquid());
            file1.mkdir();
            System.out.println(file1 == null);
            System.out.println(file1.getAbsolutePath());
            for (MultipartFile f : file) {
                if (!f.isEmpty()) {
                    //图片名
                    String name = "" + equipment.getEquid();
                    //后缀名
                    String ext = FilenameUtils.getExtension(f.getOriginalFilename());
                    f.transferTo(new File(BasePath + equipment.getEquid() + "/" + name + "." + ext));
                    //i++;
                    String imgname= file1.getAbsolutePath() + "\\" + name + "."  + ext;
                    System.out.println(imgname);
                }
            }
        }
        equipmentService.edit(equipment);
        return "redirect:list";
    }
    @RequestMapping(value = "/remove")
    public String remove(Integer equid){
        equipmentService.remove(equid);
        return "redirect:list";
    }
}
