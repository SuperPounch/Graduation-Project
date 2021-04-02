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

    <%--search--%>
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
    <link rel="stylesheet" type="text/css" href="/search/css/style.css">
    <%--轮播效果--%>
    <link rel="stylesheet" href="/bootstrap-4.1.3-dist/css/bootstrap.min.css">
    <script src="/js/jquery.min.js"/>
    <script src="/js/popper.min.js"/>
    <script src="/bootstrap-4.1.3-dist/js/bootstrap.js"></script>
    <script src="/bootstrap-4.1.3-dist/js/bootstrap.min.js"></script>
    <script src="/bootstrap-4.1.3-dist/js/bootstrap.bundle.js"></script>

    <style type="text/css">
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<%--<h1>羽毛球信息网站欢迎您！\(//▽//)\</h1>--%>
<body>
<%--导航栏--%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <a class="navbar-brand" href="/home">首页</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="/news/list">News</a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#collapsibleNavbar">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/skill/list">Skill</a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#collapsibleNavbar">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/forum/list">Forum</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/equipment/list">Equipment</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="/self" data-toggle="dropdown">
                                Person</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="/self">个人信息</a>
                                <a class="dropdown-item" href="/user/to_update_self?uid=${sessionScope.user.uid}">编辑个人信息</a>
                                <a class="dropdown-item" href="/to_change_password">修改密码</a>
                                <a class="dropdown-item" href="/forum/to_add">编写帖子</a>
                                <a class="dropdown-item" href="/quit">退出</a>
                            </div>
                        </li>
                    </ul>
                    <%--搜索框--%>
                    <form action="/news/to_search" class="search__box">
                        <input class="search__txt" type="text" name="key" placeholder="Type to search">

                        <button type="submit" > <i class="fas fa-search"></i></button>
                    </form>
                </div>
            </nav>
        </div>
    </div>
</div>
<%--news--%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="lefter">
                <div class="box">
                    <h2 style="background: #faa42b;">新闻</h2>
                </div>
            </div>
            <div class="main">
                <div class="product-list">
                    <div class="clear"></div>
                    <table class="table table-hover">
                        <c:forEach var="news" items="${news}">
                            <tr id="product_id_1">
                                <td class="thumb"><a href="/news/to_detail?newsid=${news.newsid}">${news.title}</a>
                                </td>

                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<%--skill--%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="lefter">
                <div class="box">
                    <h2 style="background: #faa42b;">Skill</h2>
                </div>
            </div>
            <div class="main">
                <div class="product-list">
                    <div class="clear"></div>
                    <table class="table table-hover">
                        <c:forEach var="skill" items="${skill}">
                            <tr id="product_id_1">
                                <td class="thumb">
                                    <a href="/skill/to_detail?skillid=${skill.skillid}">${skill.title}</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<%--forum--%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="lefter">
                <div class="box">
                    <h2 style="background: #faa42b;">Forum</h2>
                </div>
            </div>
            <div class="main">
                <div class="product-list">
                    <div class="clear"></div>
                    <table class="table table-hover">
                        <c:forEach var="forum" items="${forum}">
                            <tr id="product_id_1">
                                <td class="thumb"><a href="/forum/to_detail?forumid=${forum.forumid}">${forum.title}</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<%--equ--%>
<%--<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div id="main" class="wrap">
                <div class="lefter">
                    <div class="box">
                        <h2 style="background: #faa42b;">装备类型</h2>
                        <c:forEach items="${ec}" var="ec">
                            <dl>
                                <dd class="glyphicon glyphicon-subtitles">
                                    <a href="/equipment/to_category?category=${ec}">${ec}</a></dd>
                            </dl>
                        </c:forEach>
                    </div>
                </div>
                <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js" charset="UTF-8"></script>
                <div class="main">
                    <div id="app">
                        <c:forEach items="${equ}" var="equ">
                            <div class="box">
                                <a href="/equipment/to_detail?equid=${equ.equid}">
                                   &lt;%&ndash; <div class="imgBox">
                                        <img src="../img/t${equ.equid}.png" alt="">
                                    </div>&ndash;%&gt;
                                    <span id="equname">${equ.equname}</span>
                                    <span id="brand">类别:${equ.category}品牌${equ.brand}</span>
                                    <span class="text">${equ.introduction}</span>
                                        &lt;%&ndash;<a herf 链接Detail>&ndash;%&gt;
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>--%>
<style>
    /* demo page styles */
    body {
        min-height: 2300px;
        background: #E5E6D0 url(/Home/bg.jpg) repeat 0 0;
    }

    .content-header b,
    .admin-form .panel.heading-border:before,
    .admin-form .panel .heading-border:before {
        transition: all 0.7s ease;
    }

    /* responsive demo styles */
    @media (max-width: 800px) {
        .admin-form .panel-body {
            padding: 18px 12px;
        }
    }
</style>
<style>
    .ui-datepicker select.ui-datepicker-month,
    .ui-datepicker select.ui-datepicker-year {
        width: 48%;
        margin-top: 0;
        margin-bottom: 0;
        line-height: 25px;
        text-indent: 3px;
        color: #888;
        border-color: #DDD;
        background-color: #FDFDFD;
        -webkit-appearance: none; /*Optionally disable dropdown arrow*/
    }
</style>
<script src="/vendor/jquery/jquery-1.11.1.min.js"></script>
<script src="/vendor/jquery/jquery_ui/jquery-ui.min.js"></script>
<script src="/assets/admin-tools/admin-forms/js/jquery.validate.min.js"></script>
<script src="/assets/admin-tools/admin-forms/js/additional-methods.min.js"></script>
<script src="/assets/admin-tools/admin-forms/js/jquery-ui-datepicker.min.js"></script>
<script src="/assets/js/utility/utility.js"></script>
<script src="/assets/js/demo/demo.js"></script>
<script src="/assets/js/main.js"></script>
<script type="text/javascript" src="/js/pages.js"></script>
<script type="text/javascript" src="/js/items.js"></script>
</body>
</html>


