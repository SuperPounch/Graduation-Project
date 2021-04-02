<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>羽毛球信息门户网站</title>
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link rel="stylesheet" href="/page/style.css">
    <link rel="stylesheet" href="/bootstrap-4.1.3-dist/css/bootstrap.css">
    <%--top--%>
    <link rel="stylesheet" type="text/css" href="/assets/admin-tools/admin-forms/css/admin-forms.css">
    <%--search--%>
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
    <link rel="stylesheet" type="text/css" href="/search/css/style.css">
    <%-- 模态框--%>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark ">
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
                            <a class="nav-link dropdown-toggle" href="/self" data-toggle="dropdown">Person</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="/self">个人信息</a>
                                <a class="dropdown-item" href="/user/to_update_self?uid=${sessionScope.user.uid}">编辑个人信息</a>
                                <a class="dropdown-item" href="/to_change_password?uid=${sessionScope.user.uid}">修改密码</a>
                                <a class="dropdown-item" href="/forum/to_add">编写帖子</a>
                                <a class="dropdown-item" href="/quit">退出</a>
                            </div>
                        </li>
                    </ul>
                    <form action="/news/to_search" class="search__box" method="post">
                        <input class="search__txt" type="text" name="key" placeholder="Type to search">
                        <button type="submit" > <i class="fas fa-search"></i></button>
                    </form>
                </div>
            </nav>
        </div>
    </div>
</div>

