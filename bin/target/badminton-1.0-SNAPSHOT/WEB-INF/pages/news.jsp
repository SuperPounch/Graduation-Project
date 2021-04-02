<%--<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="../pages/head.html"/>
</head>
<body>
<div id="mainhead">
    <div id="header" class="wrap">
        <%--<div id="logo"><img src="<%=basePath %>images/logo.jpg" /></div>--%>
        <div class="help">
            <a href="#" class="shopping">查看购物车</a>
            <c:if test="${sessionScope.user!=null}"><a href="userOrder.do?uid=${sessionScope.user.uid}">我的订单</a>&nbsp;用户:${sessionScope.user.username}&nbsp;&nbsp;<a href="updateUserPage.do">信息管理</a><a href="updatePwdPage.do">账户安全</a><a href="logout.do">注销</a></c:if>
            <c:if test="${sessionScope.user==null}">
                <button type="button" class="btn btn-info" onclick="window.location.href='login.do'">登陆</button>
                <button type="button" class="btn btn-info" onclick="window.location.href='reg.do'">注册</button>
            </c:if>
        </div>
        <div class="navbar">
            <button type="button" onclick="window.location.href='/home'" class="btn btn-warning btn-lg " >首页</button>
            <button type="button" onclick="window.location.href='/news/list'" class="btn btn-warning btn-lg " >资讯</button>
            <div class="searchBook">
                <form method="post" action="#">
                    <input  type="text" class="text" name="key" placeholder="请输入新闻关键字"  /> <input class="btn btn-info" type="submit" name="submit" value="搜索" />
                </form>
            </div>
        </div>
    </div>
</div>
<div id="childNav">
        <div class="wrap">
            <ul class="clearfix">
                <c:forEach items="${list}" var="nt">
                    <li><a href="/news/to_category?category=${nt.category}" >${nt.category}</a></li>
                </c:forEach>
            </ul>
        </div>
</div>
<div id="main" class="wrap">
    <div class="lefter">
        <div class="box">
            <h2 style="background: #faa42b;">新闻类型</h2>
            <c:forEach items="${list}" var="nt">
                <dl>
                    <dd class="glyphicon glyphicon-subtitles"><a href="/news/to_category?category=${nt.category}" >${nt.category}</a></dd>
                </dl>
            </c:forEach>
        </div>
    </div>
    <div class="main">
            <div class="product-list">
                <h2>全部新闻</h2>
                <div class="clear"></div>
                <table class="table table-hover">
                    <tr>
                        <th>新闻标题</th>
                        <th>发布时间</th>
                    </tr>
                    <c:forEach var="news" items="${list}">
                        <tr id="product_id_1">
                            <td class="thumb"><a href="/news/to_detail?newsid=${news.newsid}">${news.title}</a></td>
                            <td class="price"><fmt:formatDate value="${news.createdate}" pattern="yyyy/MM/dd"/></td>
                        </tr>
                    </c:forEach>
                </table>
            <div class="clear"></div>
                <%--分页--%>
            <div class="pager">
                <ul class="clearfix">
                    <c:choose>
                        <c:when test="${pageInfo.hasPreviousPage}">
                            <li><a href="news.do?pageNum=1">首页</a></li>
                            <li><a href="news.do?pageNum=${pageInfo.prePage }">上一页</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><span>首页</span></li>
                            <li><span>上一页</span></li>
                        </c:otherwise>
                    </c:choose>
                    <c:forEach var="index" begin="1" end="${pageInfo.pages }">
                        <li <c:if test="${index==pageInfo.pageNum}">class="current"</c:if>><a href="news.do?pageNum=${index }">${index }</a></li>
                    </c:forEach>
                    <c:choose>
                        <c:when test="${pageInfo.hasNextPage}">
                            <li><a href="news.do?pageNum=${pageInfo.nextPage }">下一页</a></li>
                            <li><a href="news.do?pageNum=${pageInfo.pages }">尾页</a></li>
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
<script src="/page/js/jquery.min.js"></script>
<script src="/page/js/jquery.validate-1.13.1.js"></script>
<script src="/page/js/YuxiSlider.jQuery.min.js"></script>
<jsp:include page="../pages/footer.html"/>
</body>
</html>
