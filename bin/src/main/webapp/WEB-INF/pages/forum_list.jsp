<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--判断用户是普通用户还是管理员--%>
<c:if test="${sessionScope.user.level==2}">
    <jsp:include page="top.jsp"/>
</c:if>
<c:if test="${sessionScope.user.level==1||sessionScope.user.level==0}">
    <jsp:include page="home.jsp"/>
</c:if>
<c:if test="${sessionScope.user.level==2}">
    <section id="content" class="table-layout animated fadeIn">
        <div class="tray tray-center">
            <div class="content-header">
                <h2> Forum列表 </h2>
                <p class="lead"></p>
            </div>
            <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                <div class="panel  heading-border">
                    <div class="panel-menu">
                        <div class="row">
                            <div class="hidden-xs hidden-sm col-md-3">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default light">
                                        <i class="fa fa-refresh"></i>
                                    </button>
                                    <button type="button" class="btn btn-default light">
                                        <i class="fa fa-trash"></i>
                                    </button>
                                    <button type="button" class="btn btn-default light">
                                            <%--修改1--%>
                                        <i class="fa fa-plus"
                                           onclick="javascript:window.location.href='/forum/to_add';"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-9 text-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default light">
                                        <i class="fa fa-chevron-left"></i>
                                    </button>
                                    <button type="button" class="btn btn-default light">
                                        <i class="fa fa-chevron-right"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body pn">
                        <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                            <thead>
                            <tr class="" style="color:#000;">
                                <th class="hidden-xs">Forum编号</th>
                                <th class="hidden-xs">标题</th>
                                <th class="hidden-xs">来源</th>
                                <th class="hidden-xs">类别</th>
                                <th class="hidden-xs">日期</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${list}" var="forum">
                                <tr class="message-unread" style="color:#000;">
                                    <td>${forum.forumid}</td>
                                    <td>${forum.title}</td>
                                    <td>${forum.source}</td>
                                    <td>${forum.category}</td>
                                    <td><spring:eval expression="forum.createdate"/></td>
                                    <td>
                                        <a href="/forum/to_update?forumid=${forum.forumid}">编辑</a>
                                        <a href="/forum/to_detail?forumid=${forum.forumid}">查看</a>
                                        <a href="/forum/remove?forumid=${forum.forumid}">删除</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</c:if>
<c:if test="${sessionScope.user.level==1||sessionScope.user.level==0}">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div id="main" class="wrap">
                    <div class="lefter">
                        <div class="box">
                            <h2 style="background: #faa42b;">Forum类型</h2>
                            <c:forEach items="${fc}" var="fc">
                                <dl>
                                    <dd class="glyphicon glyphicon-subtitles">
                                        <a href="/forum/to_category?category=${fc}">${fc}</a></dd>
                                </dl>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="main">
                        <div class="product-list">
                            <div class="clear"></div>
                            <table class="table table-hover">
                                <tr>
                                    <th>Forum标题</th>
                                    <th>发布时间</th>
                                </tr>
                                <c:forEach var="forum" items="${list}">
                                    <tr id="product_id_1">
                                        <td class="thumb"><a
                                                href="/forum/to_detail?forumid=${forum.forumid}">${forum.title}</a>
                                        </td>
                                        <td class="price"><fmt:formatDate value="${forum.createdate}" pattern="yyyy/MM/dd"/></td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:if>
<jsp:include page="bottom.jsp"/>