<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<!-- Mirrored from admindesigns.com/demos/absolute/1.1/admin_forms-validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Aug 2015 02:56:15 GMT -->
<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <title> 羽毛球装备系统 </title>
    <%--静态前面加/--%>
    <link rel="stylesheet" type="text/css" href="/assets/skin/default_skin/css/theme.css">
    <link rel="stylesheet" type="text/css" href="/assets/admin-tools/admin-forms/css/admin-forms.css">
    <link rel="shortcut icon" href="/assets/img/favicon.ico">
    <%--search--%>
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
    <link rel="stylesheet" type="text/css" href="/search/css/style.css">
</head>
<body class="admin-validation-page" data-spy="scroll" data-target="#nav-spy" data-offset="200">
<div id="main">
        <header class="navbar navbar-fixed-top navbar-shadow">
        <div class="navbar-branding">
            <a class="navbar-brand" href="dashboard.html">
                <b>羽毛球系统</b>
            </a>
            <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
        </div>
        <div class="search__box">
            <input class="search__txt" type="text" name="" placeholder="Type to search">
            <a class="search__btn" href="#">
                <i class="fas fa-search"></i>
            </a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown menu-merge">
                <a href="#" class="dropdown-toggle fw600 p15" data-toggle="dropdown">
                    <img src="/assets/img/avatars/5.jpg" alt="avatar" class="mw30 br64">
                    <span class="hidden-xs pl15"> ${sessionScope.user.username} </span>
                    <span class="caret caret-tp hidden-xs"></span>
                </a>
                <ul class="dropdown-menu list-group dropdown-persist w250" role="menu">
                    <li class="list-group-item">
                        <a href="/self" class="animated animated-short fadeInUp">
                            <span class="fa fa-user"></span> 个人信息
                            <span class="label label-warning"></span>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="/to_change_password" class="animated animated-short fadeInUp">
                            <span class="fa fa-gear"></span> 设置密码 </a>
                    </li>
                    <li class="dropdown-footer">
                        <a href="/quit" class="">
                            <span class="fa fa-power-off pr5"></span> 退出 </a>
                    </li>
                </ul>
            </li>
        </ul>
    </header>
        <aside id="sidebar_left" class="nano nano-light affix">
        <div class="sidebar-left-content nano-content">
            <header class="sidebar-header">
                <div class="sidebar-widget author-widget">
                    <div class="media">
                        <a class="media-left" href="#">
                            <img src="../../assets/img/avatars/2.jpg" class="img-responsive">
                        </a>
                        <div class="media-body">
                            <div class="media-author">用户名${sessionScope.user.username}---用户等级${sessionScope.user.level}</div>
                            <div class="media-links">
                                <a href="/quit">退出</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sidebar-widget search-widget hidden">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-search"></i>
                        </span>
                        <input type="text" id="sidebar-search" class="form-control" placeholder="Search...">
                    </div>
                </div>
            </header>
            <ul class="nav sidebar-menu">
                <li class="sidebar-label pt15">基础信息管理</li>
                <li>
                    <a class="accordion-toggle" href="#">
                        <span class="glyphicon glyphicon-check"></span>
                        <span class="sidebar-title">新闻管理</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li>
                            <a href="/news/list">
                                <span class="glyphicon glyphicon-calendar"></span> 所有新闻 </a>
                        </li>
                        <li class="active">
                            <a href="/news/to_add">
                                <span class="glyphicon glyphicon-check"></span> 添加新闻 </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class="accordion-toggle" href="#">
                        <span class="glyphicon glyphicon-check"></span>
                        <span class="sidebar-title">论坛管理</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li>
                            <a href="/forum/list">
                                <span class="glyphicon glyphicon-calendar"></span> 所有帖子 </a>
                        </li>
                        <li class="active">
                            <a href="/forum/to_add">
                                <span class="glyphicon glyphicon-check"></span> 发布帖子 </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class="accordion-toggle" href="#">
                        <span class="glyphicon glyphicon-check"></span>
                        <span class="sidebar-title">技巧管理</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li>
                            <a href="/skill/list">
                                <span class="glyphicon glyphicon-calendar"></span> 所有技巧帖 </a>
                        </li>
                        <li class="active">
                            <a href="/skill/to_add">
                                <span class="glyphicon glyphicon-check"></span> 发布技巧帖 </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class="accordion-toggle" href="#">
                        <span class="fa fa-columns"></span>
                        <span class="sidebar-title">装备管理</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li>
                            <a href="/equipment/list">
                                <span class="glyphicon glyphicon-calendar"></span> 所有装备 </a>
                        </li>
                        <li class="active">
                            <a href="/equipment/to_add">
                                <span class="glyphicon glyphicon-check"></span> 添加装备 </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class="accordion-toggle" href="#">
                        <span class="fa fa-columns"></span>
                        <span class="sidebar-title">用户管理</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li>
                            <a href="/user/list">
                                <span class="glyphicon glyphicon-calendar"></span> 所有用户 </a>
                        </li>
                        <li class="active">
                            <a href="/user/to_add">
                                <span class="glyphicon glyphicon-check"></span> 添加用户 </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <div class="sidebar-toggle-mini">
                <a href="#">
                    <span class="fa fa-sign-out"></span>
                </a>
            </div>
        </div>
    </aside>
    <section id="content_wrapper">