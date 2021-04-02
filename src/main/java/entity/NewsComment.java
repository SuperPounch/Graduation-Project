package entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

public class NewsComment {

    private Integer commentid;
    private Integer newsid;
    private Integer uid;
    private String content;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date;
    private Integer iscomment;
    private  User user=null;
    private List<NewsComment> reply=null;

    public List<NewsComment> getReply() {
        return reply;
    }

    public void setReply(List<NewsComment> reply) {
        this.reply = reply;
    }

    @Override
    public String toString() {
        return "NewsComment{" +
                "commentid=" + commentid +
                ", newsid=" + newsid +
                ", uid=" + uid +
                ", content='" + content + '\'' +
                ", date=" + date +
                ", iscomment=" + iscomment +
                ", user=" + user +
                ", replay=" + reply +
                '}';
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getIscomment() {
        return iscomment;
    }

    public void setIscomment(Integer iscomment) {
        this.iscomment = iscomment;
    }

    public Integer getCommentid() {
        return commentid;
    }
    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column news_comment.newsid
     *
     * @return the value of news_comment.newsid
     *
     * @mbg.generated Wed May 27 14:21:21 CST 2020
     */
    public Integer getNewsid() {
        return newsid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column news_comment.newsid
     *
     * @param newsid the value for news_comment.newsid
     *
     * @mbg.generated Wed May 27 14:21:21 CST 2020
     */
    public void setNewsid(Integer newsid) {
        this.newsid = newsid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column news_comment.uid
     *
     * @return the value of news_comment.uid
     *
     * @mbg.generated Wed May 27 14:21:21 CST 2020
     */
    public Integer getUid() {
        return uid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column news_comment.uid
     *
     * @param uid the value for news_comment.uid
     *
     * @mbg.generated Wed May 27 14:21:21 CST 2020
     */
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column news_comment.content
     *
     * @return the value of news_comment.content
     *
     * @mbg.generated Wed May 27 14:21:21 CST 2020
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column news_comment.content
     *
     * @param content the value for news_comment.content
     *
     * @mbg.generated Wed May 27 14:21:21 CST 2020
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column news_comment.date
     *
     * @return the value of news_comment.date
     *
     * @mbg.generated Wed May 27 14:21:21 CST 2020
     */
    public Date getDate() {
        return date;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column news_comment.date
     *
     * @param date the value for news_comment.date
     *
     * @mbg.generated Wed May 27 14:21:21 CST 2020
     */
    public void setDate(Date date) {
        this.date = date;
    }
}