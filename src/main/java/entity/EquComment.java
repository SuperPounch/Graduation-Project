package entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

public class EquComment {
    private Integer commentid;
    private Integer uid;
    private Integer equid;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date;
    private String content;
    private Integer iscomment;
    private User user = null;
    private List<EquComment> reply = null;

    public List<EquComment> getReply() {
        return reply;
    }

    public void setReply(List<EquComment> reply) {
        this.reply = reply;
    }

    public Integer getIscomment() {
        return iscomment;
    }

    public void setIscomment(Integer iscomment) {
        this.iscomment = iscomment;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getEquid() {
        return equid;
    }

    public void setEquid(Integer equid) {
        this.equid = equid;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}