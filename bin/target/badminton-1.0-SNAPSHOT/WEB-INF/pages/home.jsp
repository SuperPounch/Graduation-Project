<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%--删除--%>
    <%-- <meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <title>羽毛球信息门户网站</title>
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link rel="stylesheet" href="/page/style.css">
    <link rel="stylesheet" href="/bootstrap-4.1.3-dist/css/bootstrap.css">
    <%-- <link rel="stylesheet"  href="/Home/css1/css.css"/>
     <link rel="stylesheet" href="/Home/css1/style.css"/>--%>
    <%--轮播效果--%>
    <link rel="stylesheet" href="/bootstrap-4.1.3-dist/css/bootstrap.min.css">
    <script src="/js/jquery.min.js"/>
    <script src="/js/popper.min.js"/>
    <script src="/bootstrap-4.1.3-dist/js/bootstrap.js"></script>
    <script src="/bootstrap-4.1.3-dist/js/bootstrap.min.js"></script>
    <script src="/bootstrap-4.1.3-dist/js/bootstrap.bundle.js"></script>
    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<%--<h1>羽毛球信息网站欢迎您！\(//▽//)\</h1>--%>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark ">
                <a class="navbar-brand" href="">首页</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="/news/list" >News</a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <%--<div class="dropdown-menu">
                                <a class="dropdown-item" href="/news/to_category?category=赛事">赛事</a>
                                <a class="dropdown-item" href="/news/to_category?category=官方">官方</a>
                                <a class="dropdown-item" href="/news/to_category?category=人物八卦">人物八卦</a>
                                <a class="dropdown-item" href="/news/to_category?category=品牌资讯">品牌资讯</a>
                            </div>--%>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/skill/list">Skill</a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <%--<div class="dropdown-menu">
                                <a class="dropdown-item" href="/skill/to_category?category=步伐训练">步伐训练</a>
                                <a class="dropdown-item" href="/skill/to_category?category=击球发力">击球发力</a>
                                <a class="dropdown-item" href="/skill/to_category?category=动作技术">动作技术</a>
                                <a class="dropdown-item" href="/skill/list">其他</a>
                            </div>--%>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/equipment/list">Equipment</a>
                            <%--<div class="dropdown-menu">
                                <a class="dropdown-item" href="/equipment/list">类别</a>
                                <a class="dropdown-item" href="/equipment/list">品牌</a>
                            </div>--%>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/forum/list">Forum</a>
                            <%--<div class="dropdown-menu">
                                <a class="dropdown-item" href="/forum/to_category?category=交流帖">交流帖</a>
                                <a class="dropdown-item" href="/forum/to_category?category=交易帖">交易帖</a>
                                <a class="dropdown-item" href="/forum/to_category?category=分享帖">分享帖</a>
                                <a class="dropdown-item" href="/forum/to_category?category=其他">其他</a>
                            </div>--%>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="/self" data-toggle="dropdown">
                                Person</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="/self">个人信息</a>
                                <a class="dropdown-item" href="/user/to_update?uid=${sessionScope.user.uid}">编辑个人信息</a>
                                <a class="dropdown-item" href="/to_change_password">修改密码</a>
                                <a class="dropdown-item" href="/quit">退出</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
            <%--轮播--%>
            <%-- <div id="demo" class="carousel slide" data-ride="carousel">
                 <!-- 指示符 -->
                 <ul class="carousel-indicators">
                     <li data-target="#demo" data-slide-to="0" class="active"></li>
                     <li data-target="#demo" data-slide-to="1"></li>
                     <li data-target="#demo" data-slide-to="2"></li>
                 </ul>
                 <!-- 轮播图片 -->
                 <div class="carousel-inner">
                     <div class="carousel-item active">
                         <img src="https://static.runoob.com/images/mix/img_fjords_wide.jpg">
                         <div class="carousel-caption">
                             <h3>第一张图片描述标题</h3>
                             <p>描述文字!</p>
                         </div>
                     </div>
                     <div class="carousel-item">
                         <img src="https://static.runoob.com/images/mix/img_nature_wide.jpg">
                         <div class="carousel-caption">
                             <h3>第二张图片描述标题</h3>
                             <p>描述文字!</p>
                         </div>
                     </div>
                     <div class="carousel-item">
                         <img src="https://static.runoob.com/images/mix/img_mountains_wide.jpg">
                         <div class="carousel-caption">
                             <h3>第三张图片描述标题</h3>
                             <p>描述文字!</p>
                         </div>
                     </div>
                 </div>
                 <!-- 左右切换按钮 -->
                 <a class="carousel-control-prev" href="#demo" data-slide="prev">
                     <span class="carousel-control-prev-icon"></span>
                 </a>
                 <a class="carousel-control-next" href="#demo" data-slide="next">
                     <span class="carousel-control-next-icon"></span>
                 </a>
             </div>--%>
        </div>
    </div>
</div>

