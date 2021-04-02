package entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.File;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-22-10:18
 */
public class News {
    private Integer newsid;
    private String source;
    private String category;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdate;
    private String text;
    private String title;
    private List<String> img;
    private List<NewsComment> commentList;

    @Override
    public String toString() {
        return "News{" +
                "newsid=" + newsid +
                ", source='" + source + '\'' +
                ", category='" + category + '\'' +
                ", createdate=" + createdate +
                ", text='" + text + '\'' +
                ", title='" + title + '\'' +
                ", img=" + img +
                ", commentList=" + commentList +
                '}';
    }

    public List<NewsComment> getCommentList() {
        return commentList;
    }

    public void setCommentList(List<NewsComment> commentList) {
        this.commentList = commentList;
    }

    public List<String> getImg(){
        File file = new File("D:\\badminton_1\\src\\main\\webapp\\assets\\img\\avatars\\" + this.newsid);
        return Arrays.asList(file.list());
    }

    public void setImg(List<String> img) {
        this.img = img;
    }


    public Integer getNewsid() {
        return newsid;
    }

    public void setNewsid(Integer newsid) {
        this.newsid = newsid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }


}
