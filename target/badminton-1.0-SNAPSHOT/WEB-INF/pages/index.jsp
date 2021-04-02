<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>wow big menu</title>
    <!--响应式框架-->
    <link rel="stylesheet" type="text/css" href="/assets/skin/default_skin/css/bootstrap.min.css">
    <!--图标库-->
    <link rel="stylesheet"type="text/css" href="/assets/skin/default_skin/css/all.min.css">
  <!--主要样式-->
    <link rel="stylesheet"type="text/css" href="/assets/skin/default_skin/css/style.css">
</head>
<body>
<main class="site-wrapper">
    <div class="pt-table desktop-768">
        <div class="pt-tablecell page-home relative"
             style="background-image: url(/assets/img/avatars/back.jpg);background-position:center;background-size: cover;">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
                        <div class="page-title  home text-center">
                                <span class="heading-page">
                                    欢迎来到<c:out value="${sessionScope.user.username}"></c:out>的主页
                                </span>
                            <p class="mt20">以下为五个系统模块</p>
                        </div>
                        <div class="hexagon-menu clear">
                            <div class="hexagon-item">
                                <div class="hex-item">
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                </div>
                                <div class="hex-item">
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                </div>
                                <a href="/user/list" class="hex-content">
                                        <span class="hex-content-inner">
                                            <span class="icon">
                                                <i class="fa fa-universal-access"></i>
                                            </span>
                                            <span class="title">用户信息模块</span>
                                        </span>
                                    <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z"
                                              fill="#1e2530"></path>
                                    </svg>
                                </a>
                            </div>
                            <div class="hexagon-item">
                                <div class="hex-item">
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                </div>
                                <div class="hex-item">
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                </div>
                                <a href="/news/list" class="hex-content">
                                        <span class="hex-content-inner">
                                            <span class="icon">
                                                <i class="fa fa-bullseye"></i>
                                            </span>
                                            <span class="title">新闻信息模块</span>
                                        </span>
                                    <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z"
                                              fill="#1e2530"></path>
                                    </svg>
                                </a>
                            </div>
                            <div class="hexagon-item">
                                <div class="hex-item">
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                </div>
                                <div class="hex-item">
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                </div>
                                <a href="/skill/list" class="hex-content">
                                        <span class="hex-content-inner">
                                            <span class="icon">
                                                <i class="fa fa-braille"></i>
                                            </span>
                                            <span class="title">技巧模块</span>
                                        </span>
                                    <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z"
                                              fill="#1e2530"></path>
                                    </svg>
                                </a>
                            </div>
                            <div class="hexagon-item">
                                <div class="hex-item">
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                </div>
                                <div class="hex-item">
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                </div>
                                <a href="/forum/list" class="hex-content">
                                        <span class="hex-content-inner">
                                            <span class="icon">
                                                <i class="fa fa-id-badge"></i>
                                            </span>
                                            <span class="title">论坛模块</span>
                                        </span>
                                    <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z"
                                              fill="#1e2530"></path>
                                    </svg>
                                </a>
                            </div>
                            <div class="hexagon-item">
                                <div class="hex-item">
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                </div>
                                <div class="hex-item">
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                </div>
                                <a href="/equipment/list" class="hex-content">
                                        <span class="hex-content-inner">
                                            <span class="icon">
                                                <i class="fa fa-life-ring"></i>
                                            </span>
                                            <span class="title">装备模块</span>
                                        </span>
                                    <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z"
                                              fill="#1e2530"></path>
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
</body>
</html>