package entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-22-10:23
 */
public class Skill {
    private Integer skillid;
    private String title;
    private String source;
    private String category;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdate;
    private String text;
    private List<SkillComment> commentList;

    @Override
    public String toString() {
        return "Skill{" +
                "skillid=" + skillid +
                ", title='" + title + '\'' +
                ", source='" + source + '\'' +
                ", category='" + category + '\'' +
                ", createdate=" + createdate +
                ", text='" + text + '\'' +
                ", commentList=" + commentList +
                '}';
    }

    public List<SkillComment> getCommentList() {
        return commentList;
    }

    public void setCommentList(List<SkillComment> commentList) {
        this.commentList = commentList;
    }

    public Integer getSkillid() {
        return skillid;
    }

    public void setSkillid(Integer skillid) {
        this.skillid = skillid;
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
