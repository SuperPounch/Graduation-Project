<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>登录注册窗口</title>
    <!-- for-mobile-apps -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords"
          content="Slide Multi Forms Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <!-- //font-awesome icons -->
    <link href="Login/css/style.css" rel="stylesheet" type="text/css" media="all"/>

</head>
<body>
<div class="content" id="Main-Content">
    <h1>羽毛球信息网站欢迎你~~\(//▼//)\</h1>
    <div class="w3ls-slider">
        <div class="hub-slider">
            <div class="hub-slider-slides">
                <ul>
                    <li>
                        <div class="login-form login-form-left">
                            <div class="agile-row">
                                <h2>Sign In</h2>
                                <div class="login-agileits-top">
                                    <form action="/login" method="post" id="contact">
                                        <p>User Name </p>
                                        <input type="text" id="login_username" name="login_username" required=""/>
                                        <p>Password</p>
                                        <input type="password" id="login_password" name="login_password" required=""/>
                                        <label class="anim">
                                            <input type="checkbox" class="checkbox">
                                            <span> Remember me ?</span>
                                        </label>
                                        <input type="submit" value="登录">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="login-form agileits-right">
                            <div class="agile-row">
                                <h3>Sign Up</h3>
                                <div class="login-agileits-top">
                                    <form action="/regist" method="post">
                                        <p>用户名 </p>
                                        <input type="text" id="username" name="username" />
                                        <p>密码</p>
                                        <input type="password" id="password" name="password" required=""/>
                                        <p>确认密码</p>
                                        <input type="password" id="regpass2" name="regpass2" required=""/>
                                       <%-- <p>年龄</p>
                                        <input type="text" id="age" name="age" required=""/>
                                        <p>生日</p>
                                        <input type="text" id="birthday" name="birthday" value="yyyy-mm-dd"/>
                                        <p>邮箱</p>
                                        <input type="email" id="mail" name="mail" required=""/>
                                        <p>电话号码</p>
                                        <input type="text" id="phone" name="phone" required=""/>
                                        <p>想要</p>
                                        <input type="text" id="want" name="want" value="null"/>
                                        <p>等级</p>
                                        <select>
                                            <option value="0" selected="selected">0</option>
                                            <option value="1">1</option>
                                        </select>
                                        <p>性别</p>
                                        <select>
                                            <option value="男" selected="selected">男</option>
                                            <option value="女">女</option>
                                        </select>--%>
                                        <label class="anim">
                                            <input type="checkbox" class="checkbox">
                                            <span> Remember me ?</span>
                                        </label>
                                        <input type="submit" value="注册"/>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="hub-slider-controls">
                <button class="hub-slider-arrow hub-slider-arrow_next">↑</button>
                <button class="hub-slider-arrow hub-slider-arrow_prev">↓</button>
            </div>
        </div>
    </div>
    <!-- //copyright -->
</div>
<script src="Login/js/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="Login/js/hubslider.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        $('.hub-slider-slides ul').hubSlider({
            selector: $('li'),
            button: {
                next: $('.hub-slider-arrow_next'),
                prev: $('.hub-slider-arrow_prev')
            },
            transition: '0.7s',
            startOffset: 30,
            auto: true,
            time: 2
        });
    })
</script>
</body>
</html>
