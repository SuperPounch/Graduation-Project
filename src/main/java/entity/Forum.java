package entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

/**
 * @author lx
 * @create_TIME 2020-04-22-10:26
 */
public class Forum {
    private Integer forumid;
    private String title;
    private String source;
    private String category;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdate;
    private String text;
    private List<ForumComment> commentList;

    @Override
    public String toString() {
        return "Forum{" +
                "forumid=" + forumid +
                ", title='" + title + '\'' +
                ", source='" + source + '\'' +
                ", category='" + category + '\'' +
                ", createdate=" + createdate +
                ", text='" + text + '\'' +
                ", commentList=" + commentList +
                '}';
    }

    public List<ForumComment> getCommentList() {
        return commentList;
    }

    public void setCommentList(List<ForumComment> commentList) {
        this.commentList = commentList;
    }

    public Integer getForumid() {
        return forumid;
    }

    public void setForumid(Integer forumid) {
        this.forumid = forumid;
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
