package global;

import java.util.ArrayList;
import java.util.List;

public class Contant {
    public static String saishi="赛事";
    public static List<String> getCategory(){
        List<String> list = new ArrayList<String>();
        list.add("羽毛球");
        list.add("羽毛球拍");
        list.add("羽毛球包");
        list.add("球衣球裤");
        list.add("羽毛球鞋");
        return list;
    }
    public static List<String> getBrand(){
        List<String> list = new ArrayList<String>();
        list.add("尤尼克斯");
        list.add("李宁");
        list.add("亚狮龙");
        list.add("胜利");
        list.add("凯胜");
        return list;
    }
    public static List<String> getNews(){
        List<String> list = new ArrayList<String>();
        list.add(saishi);
        list.add("官方");
        list.add("人物八卦");
        list.add("品牌资讯");
        return list;
    }
    public static List<String> getSkill(){
        List<String> list = new ArrayList<String>();
        list.add("步伐训练");
        list.add("击球发力");
        list.add("动作技术");
        list.add("其他");
        return list;
    }
    public static List<String> getForum(){
        List<String> list = new ArrayList<String>();
        list.add("交流帖");
        list.add("交易帖");
        list.add("分享帖");
        list.add("其他");
        return list;
    }
}
