<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="../pages/head.html"/>
</head>
<body>
<div id="mainhead">
    <div id="header" class="wrap">
        <div id="logo"><img src="<%=basePath %>images/logo.jpg" /></div>
        <div class="help">
            <a href="cartPage.do" class="shopping">查看购物车</a>
            <c:if test="${sessionScope.user!=null}"><a href="userOrder.do?uid=${sessionScope.user.uid}">我的订单</a>&nbsp;用户:${sessionScope.user.uname}&nbsp;&nbsp;<a href="updateUserPage.do">信息管理</a><a href="updatePwdPage.do">账户安全</a><a href="logout.do">注销</a></c:if>
            <c:if test="${sessionScope.user==null}">
                <button type="button" class="btn btn-info" onclick="window.location.href='login.do'">登陆</button>
                <button type="button" class="btn btn-info" onclick="window.location.href='reg.do'">注册</button>
            </c:if>
        </div>
        <div class="navbar">
            <button type="button" onclick="window.location.href='index.do'" class="btn btn-warning btn-lg " >首页</button>
            <button type="button" onclick="window.location.href='news.do'" class="btn btn-warning btn-lg " >资讯</button>
            <div class="searchBook">
                <form method="post" action="newsList.do">
                    <input  type="text" class="text" name="key" placeholder="请输入新闻关键字"  /> <input class="btn btn-info" type="submit" name="submit" value="搜索" />
                </form>
            </div>
        </div>
    </div>
</div>
<div id="childNav">
    <div class="wrap">
        <ul class="clearfix">
            <c:forEach items="${nts}" var="nt">
                <li><a href="newsList.do?ntype=${nt}" >${nt}</a></li>
            </c:forEach>
        </ul>
    </div>
</div>
<div id="main" class="wrap">
    <div class="lefter">
        <div class="box">
            <h2 style="background: #faa42b;">新闻类型</h2>
            <c:forEach items="${nts}" var="nt">
                <dl>
                    <dd class="glyphicon glyphicon-subtitles"><a href="newsList.do?ntype=${nt}" >${nt}</a></dd>
                </dl>
            </c:forEach>
        </div>
    </div>
    <div id="product" class="main">
        <h1>${news.nname}</h1>
        <h3> </h3>
        <div class="infos">
            <div class="ncon">
                <p><span class="intro">${news.ncontent}</span></p>
                <p><span class="introdate">${dateStr}</span></p>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="clear"></div>
</div>
<jsp:include page="../pages/footer.html"/>
<script src="../../js/product.js"></script>
</body>
</html>


