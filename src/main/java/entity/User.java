package entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @author lx
 * @create_TIME 2020-04-07-11:02
 */
public class User {
    private Integer uid;//ID
    private Integer level;//等级
    private Integer age;//年龄
    private String sex;//性别
    private String password;//密码
    private String username;//姓名
    private String phone;//电话
    private String mail;//邮箱
    private String want;//收藏
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;//生日

    public String getSex() { return sex; }

    public void setSex(String sex) { this.sex = sex; }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getWant() {
        return want;
    }

    public void setWant(String want) {
        this.want = want;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", level=" + level +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                ", password='" + password + '\'' +
                ", username='" + username + '\'' +
                ", phone='" + phone + '\'' +
                ", mail='" + mail + '\'' +
                ", want='" + want + '\'' +
                ", birthday=" + birthday +
                '}';
    }
}
