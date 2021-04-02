<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 添加评论 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form action="/forumComment/addself" modelAttribute="comment" id="admin-form" name="addForm">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="commentid" class="field prepend-icon">
                                    <form:input path="commentid" cssClass="gui-input" placeholder="评论编号..."/>
                                    <label for="commentid" class="field-icon">

                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="uid" class="field prepend-icon">
                                    <form:input path="uid" cssClass="gui-input" placeholder="用户编号..."/>
                                    <label for="uid" class="field-icon">

                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="forumid" class="field prepend-icon">
                                    <form:input path="forumid" cssClass="gui-input" placeholder="论坛帖编号..."/>
                                    <label for="forumid" class="field-icon">

                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="content" class="field prepend-icon">
                                    <form:input path="content" cssClass="gui-input" placeholder="评论内容..."/>
                                    <label for="content" class="field-icon">

                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="date" class="field prepend-icon">
                                    <form:input path="date" cssClass="gui-input" placeholder="评论时间..."/>
                                    <label for="date" class="field-icon">

                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section">
                            <label for="iscomment" class="field prepend-icon">
                                <form:input path="iscomment" cssClass="gui-input" placeholder="所属..."/>
                                <label for="iscomment" class="field-icon">

                                </label>
                            </label>
                        </div>
                        <div class="panel-footer text-right">
                            <button type="submit" class="button">
                                保存
                            </button>
                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回
                            </button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>