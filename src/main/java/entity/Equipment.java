package entity;


import java.io.File;
import java.util.Arrays;
import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-15-16:21
 */
public class Equipment {
    private Integer  equid;
    private Integer price;
    private String equname;
    private String brand;
    private String series;
    private String category;
    private String introduction;
    private List<EquComment> commentList;

    public List<EquComment> getCommentList() {
        return commentList;
    }

    public void setCommentList(List<EquComment> commentList) {
        this.commentList = commentList;
    }

    public void setImg(String img) {
        this.img = img;
    }

    private String img;

    @Override
    public String toString() {
        return "Equipment{" +
                "equid='" + equid + '\'' +
                ", price=" + price +
                ", equname='" + equname + '\'' +
                ", brand='" + brand + '\'' +
                ", series='" + series + '\'' +
                ", category='" + category + '\'' +
                ", introduction='" + introduction + '\'' +
                ", img=" + img +
                '}';
    }

    public String getImg(){
       // File file = new File("D:\\badminton_1\\src\\main\\webapp\\img\\equipment\\" + this.equid+"\\");
        return img;
        //Arrays.asList(file.list())
    }
    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getEquid() {
        return equid;
    }

    public void setEquid(Integer equid) {
        this.equid = equid;
    }

    public String getEquname() {
        return equname;
    }

    public void setEquname(String equname) {
        this.equname = equname;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getSeries() {
        return series;
    }

    public void setSeries(String series) {
        this.series = series;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }
}
