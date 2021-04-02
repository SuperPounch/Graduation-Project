package entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @author lx
 * @create_TIME 2020-04-22-10:28
 */
public class Comment {
    private Integer commentid;
    private Integer userid;
    private String source;
    private String category;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdate;
    private String text;

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
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
