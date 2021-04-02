<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${sessionScope.user.level==2}">
    <jsp:include page="top.jsp"/>
</c:if>
<c:if test="${sessionScope.user.level==1||sessionScope.user.level==0}">
    <jsp:include page="home.jsp"/>
</c:if>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <section id="content" class="table-layout animated fadeIn">
                <div class="tray tray-center">
                    <div class="content-header">
                        <h2> Forum </h2>
                        <p class="lead"></p>
                    </div>
                    <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                        <div class="panel heading-border">
                            <form:form action="/forum/to_detail" modelAttribute="equ" id="admin-form" name="addForm">
                                <div class="panel-body bg-light">
                                    <div class="section-divider mt20 mb40">
                                        <span> 基本信息 </span>
                                    </div>
                                    <div class="section row">
                                        <div class="col-md-6">
                                            <label for="equname" class="field prepend-icon">
                                                <form:textarea path="equname" cssClass="gui-input"
                                                               placeholder="装备名称..."/>
                                                <label for="equname" class="field-icon">
                                                    <i class="fa fa-user"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="category" class="field prepend-icon">
                                                <form:textarea path="category" cssClass="gui-input"
                                                               placeholder="类别..."/>
                                                <label for="category" class="field-icon">
                                                    <i class="fa fa-user"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="brand" class="field prepend-icon">
                                                <form:textarea path="brand" cssClass="gui-input" placeholder="品牌..."/>
                                                <label for="brand" class="field-icon">
                                                    <i class="fa fa-user"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="series" class="field prepend-icon">
                                                <form:textarea path="series" cssClass="gui-input" placeholder="系列..."/>
                                                <label for="series" class="field-icon">
                                                    <i class="fa fa-user"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="price" class="field prepend-icon">
                                                <form:textarea path="price" cssClass="gui-input" placeholder="价格..."/>
                                                <label for="price" class="field-icon">
                                                    <i class="fa fa-user"></i>
                                                </label>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="section">
                                        <label for="introduction" class="field prepend-icon">
                                            <form:textarea path="introduction" cssClass="gui-input"
                                                           placeholder="介绍..."/>
                                            <label for="introduction" class="field-icon">
                                                <i class="fa fa-lock"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <td>
                                        <img src="/upload/${equ.equid}/${equ.equid}1.png"
                                             style="max-height: 600px;max-width: 600px"/>
                                    </td>
                                    <div class="panel-footer text-right">
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
