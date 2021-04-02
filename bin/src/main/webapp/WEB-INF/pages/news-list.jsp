<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <div class="main">
        <div class="product-list">
            <c:if test="${sessionScope.isnewstype == '是'}" >
                <h2>全部 ${sessionScope.newstype}</h2>
            </c:if>
            <c:if test="${sessionScope.isnewssearch == '是'}" >
                <h2>全部包含 (${sessionScope.newssearch}) 关键字的新闻</h2>
            </c:if>
            <div class="clear"></div>
            <table class="table table-hover">
                <tr>
                    <th>新闻标题</th>
                    <th>发布时间</th>
                </tr>
                <c:forEach var="news" items="${news}">
                    <tr id="product_id_1">
                        <td class="thumb"><a href="newsView.do?nid=${news.nid}">${news.nname}</a></td>
                        <td class="price"><fmt:formatDate value="${news.ndate}" pattern="yyyy/MM/dd"/></td>
                    </tr>
                </c:forEach>
            </table>
            <div class="clear"></div>
            <div class="pager">
                <ul class="clearfix">
                    <c:choose>
                        <c:when test="${pageInfo.hasPreviousPage}">
                            <li><a href="newsList.do?pageNum=1">首页</a></li>
                            <li><a href="newsList.do?pageNum=${pageInfo.prePage }">上一页</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><span>首页</span></li>
                            <li><span>上一页</span></li>
                        </c:otherwise>
                    </c:choose>
                    <c:forEach var="index" begin="1" end="${pageInfo.pages }">
                        <li <c:if test="${index==pageInfo.pageNum}">class="current"</c:if>><a href="newsList.do?pageNum=${index }">${index }</a></li>
                    </c:forEach>
                    <c:choose>
                        <c:when test="${pageInfo.hasNextPage}">
                            <li><a href="newsList.do?pageNum=${pageInfo.nextPage }">下一页</a></li>
                            <li><a href="newsList.do?pageNum=${pageInfo.pages }">尾页</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><span>下一页</span></li>
                            <li><span>尾页</span></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/YuxiSlider.jQuery.min.js"></script>
<jsp:include page="../pages/footer.html"/>
</body>
</html>

