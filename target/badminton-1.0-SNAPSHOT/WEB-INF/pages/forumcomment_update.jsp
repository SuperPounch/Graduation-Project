<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 添加评论 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form action="/forumComment/update" modelAttribute="comment" id="admin-form" name="addForm">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="commentid" class="field prepend-icon">评论编号
                                    <input name="commentid" id="commentid" class="gui-input" placeholder="评论编号..."
                                           value="${comment.commentid}"/>
                                    <label for="commentid" class="field-icon">

                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="uid" class="field prepend-icon">用户编号
                                    <input id="uid" name="uid" class="gui-input" placeholder="用户编号..."
                                           value="${comment.uid}"/>
                                    <label for="uid" class="field-icon">

                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="forumid" class="field prepend-icon">论坛帖编号
                                    <input id="forumid" name="forumid" class="gui-input" placeholder="论坛帖编号..."
                                           value="${comment.forumid}"/>
                                    <label for="forumid" class="field-icon">

                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="content" class="field prepend-icon">评论内容
                                    <input name="content" class="gui-input" placeholder="评论内容..."
                                           value="${comment.content}"/>
                                    <label for="content" class="field-icon">
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="date" class="field prepend-icon">评论时间
                                    <input name="date" id="date" class="gui-input" placeholder="评论时间..."
                                           value="<spring:eval expression="comment.date"/>"/>
                                    <label for="date" class="field-icon">
                                    </label>
                                </label>
                            </div>

                            <div class="col-md-6">
                                <label for="iscomment" class="field prepend-icon">所属
                                    <input name="iscomment" id="iscomment" class="gui-input" placeholder="所属..."
                                           value="${comment.iscomment}"/>
                                    <label for="iscomment" class="field-icon">
                                    </label>
                                </label>
                            </div>
                            <div class="panel-footer text-right">
                                <button type="submit" class="button"> 保存</button>
                                <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>