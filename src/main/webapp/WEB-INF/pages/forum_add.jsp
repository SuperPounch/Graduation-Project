<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${sessionScope.user.level==2||sessionScope.user.level==3}">
    <jsp:include page="top.jsp"/>
</c:if>
<c:if test="${sessionScope.user.level==1||sessionScope.user.level==0}">
    <!DOCTYPE html>
    <html>
    <head>
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
</c:if>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <section id="content" class="table-layout animated fadeIn">
                <div class="tray tray-center">
                    <div class="content-header">
                        <h1></h1>
                        <h2> 添加Forum </h2>
                        <p class="lead"></p>
                    </div>
                    <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                        <div class="panel heading-border">
                            <form:form action="/forum/add" modelAttribute="forum" id="admin-form" name="addForm">
                                <div class="panel-body bg-light">
                                    <div class="section-divider mt20 mb40">
                                        <span> 基本信息 </span>
                                    </div>
                                    <div class="section row">
                                        <div class="col-md-6">
                                            <label for="title" class="field prepend-icon">
                                                <form:input path="title" cssClass="gui-input" placeholder="标题..."/>
                                                <label for="title" class="field-icon">
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="source" class="field prepend-icon">
                                                <form:input path="source" cssClass="gui-input" placeholder="来源..."/>
                                                <label for="source" class="field-icon">
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="category" class="field prepend-icon">
                                                <form:select path="category" cssClass="gui-input" items="${category}"/>
                                                <label for="category" class="field-icon">
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="createdate" class="field prepend-icon">
                                                <form:input path="createdate" cssClass="gui-input"
                                                            placeholder="创建时间..."/>
                                                <label for="createdate" class="field-icon">
                                                </label>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="section">
                                        <label for="text" class="field prepend-icon">
                                            <form:input path="text" cssClass="gui-input" placeholder="正文..."/>
                                            <label for="text" class="field-icon">

                                            </label>
                                        </label>
                                    </div>
                                    <div class="panel-footer text-right">
                                        <button type="submit" class="button"> 保存</button>
                                        <button type="button" class="button"
                                                onclick="javascript:window.history.go(-1);"> 返回
                                        </button>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<jsp:include page="bottom.jsp"/>