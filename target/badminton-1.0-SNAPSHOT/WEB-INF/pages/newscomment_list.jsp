<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--判断用户是普通用户还是管理员--%>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 新闻评论 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
                        <div class="hidden-xs hidden-sm col-md-3">
                            <%--刷新、删除、增加按钮--%>
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
                                       onclick="javascript:window.location.href='/newsComment/to_add';"></i>
                                </button>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-9 text-right">
                            <%--分页左右按钮--%>
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
                            <th class="hidden-xs">评论编号</th>
                            <th class="hidden-xs">用户编号</th>
                            <th class="hidden-xs">新闻编号</th>
                            <th class="hidden-xs">评论内容</th>
                            <th class="hidden-xs">评论日期</th>
                            <th class="hidden-xs">所属</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="comment">
                            <tr class="message-unread" style="color:#000;">
                                <td>${comment.commentid}</td>
                                <td>${comment.uid}</td>
                                <td>${comment.newsid}</td>
                                <td>${comment.content}</td>
                                <td><spring:eval expression="comment.date"/></td>
                                <td>
                                    <c:if test="${comment.iscomment==0}">
                                        新闻评论
                                    </c:if>
                                    <c:if test="${comment.iscomment!=0}">
                                        评论回复
                                    </c:if>
                                </td>
                                <td>
                                    <a href="/newsComment/to_update?commentid=${comment.commentid}">编辑</a>
                                    <a href="/newsComment/remove?commentid=${comment.commentid}">/删除</a>
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

<jsp:include page="bottom.jsp"/>